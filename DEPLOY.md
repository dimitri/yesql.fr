# Deployment

Local git → GitHub → GitHub Actions → GitHub Pages, on the apex domain
`yesql.fr` with a GitHub-provisioned TLS certificate.

Same shape as `taop.xyz` and `tapoueh.org`: Hugo builds into `docs/`, the
workflow uploads that directory as a Pages artifact, and `docs/` is gitignored
locally so the built output never lands in a commit.

---

## How it works

```
git push origin main
        │
        ▼
.github/workflows/deploy.yml       on: push to main
        │
        ├─ hugo --minify --gc --baseURL https://yesql.fr/   → docs/
        │     └─ fails the build if fr/en content has drifted (assert-parity)
        ├─ hugo --renderToMemory --logLevel warn            → fails on any WARN
        ├─ lychee --offline docs/                           → fails on a dead link
        └─ upload-pages-artifact  →  deploy-pages
                                          │
                                          ▼
                              https://yesql.fr  (TLS by GitHub)
```

Three gates before anything ships: the fr/en parity guard, zero Hugo warnings,
zero broken internal links.

`static/CNAME` contains `yesql.fr`, so the custom domain travels with the
artifact on every deploy and cannot be lost by a settings change.

---

## One-time setup

Do steps 1–3 now. **Step 4 is the DNS cutover** — leave it until you are ready;
everything before it is invisible to the public.

### 1. Create the GitHub repository

The repository is already initialised locally on `main` with an initial commit.

```bash
gh repo create dimitri/yesql.fr --private --source=. --remote=origin --push
```

Use `--public` instead of `--private` if you want the source open. GitHub Pages
works with either on a paid plan; on a free plan a private repo cannot publish
Pages.

Without `gh`, create the repo in the web UI and then:

```bash
git remote add origin git@github.com:dimitri/yesql.fr.git && git push -u origin main
```

### 2. Point Pages at Actions

Repository **Settings → Pages → Build and deployment → Source: GitHub Actions**.

Do this *before* the first push, or re-run the workflow afterwards — the deploy
job fails if Pages is still set to "Deploy from a branch".

The first successful run publishes to `https://dimitri.github.io/yesql.fr/`.
Check the site there before touching DNS. Note that the CSS and internal links
are absolute against `https://yesql.fr/`, so that preview will look unstyled —
that is expected, and it is not a reason to change `baseURL`.

### 3. Verify the domain (do this before the DNS cutover)

**Account Settings → Pages → Add a verified domain** → `yesql.fr`. GitHub gives
you a `TXT` record of the form:

```
_github-pages-challenge-dimitri.yesql.fr.   TXT   "<token>"
```

Add it and click verify. This is not optional in any meaningful sense: without
it, anyone who can point a repository at `yesql.fr` could take over the domain
on Pages the moment your DNS points there.

Adding the TXT record is safe to do now — it changes nothing about where the
domain resolves.

### 4. DNS cutover — when you are ready

At the registrar for `yesql.fr`:

**Apex (`yesql.fr`) — four A records:**

```
185.199.108.153
185.199.109.153
185.199.110.153
185.199.111.153
```

**Apex — four AAAA records (IPv6, recommended):**

```
2606:50c0:8000::153
2606:50c0:8001::153
2606:50c0:8002::153
2606:50c0:8003::153
```

**`www` — one CNAME:**

```
www.yesql.fr.   CNAME   dimitri.github.io.
```

GitHub redirects `www` → apex automatically once both resolve. Recommended even
though the canonical URL is the apex: it costs one record and stops `www.yesql.fr`
from being a dead name.

> Re-check the IP addresses against GitHub's own documentation at cutover time
> rather than trusting this file — they change rarely, but they do change:
> <https://docs.github.com/pages/configuring-a-custom-domain-for-your-github-pages-site/managing-a-custom-domain-for-your-github-pages-site>

If the domain is registered elsewhere and you would rather not manage four A
records, an `ALIAS`/`ANAME` at the apex pointing to `dimitri.github.io` works
too, where the provider supports it.

Verify propagation:

```bash
dig +short yesql.fr A
dig +short yesql.fr AAAA
dig +short www.yesql.fr CNAME
```

### 5. Set the custom domain and turn on TLS

Repository **Settings → Pages → Custom domain** → `yesql.fr` → Save.

GitHub then requests a Let's Encrypt certificate. This takes anywhere from a few
minutes to a few hours; the page shows a "certificate provisioning" notice while
it runs.

**Wait for that notice to clear, then tick "Enforce HTTPS."** Ticking it early
does no harm but shows an error until the certificate exists. Certificates renew
automatically as long as the DNS keeps resolving to GitHub.

Sanity check:

```bash
curl -sSI https://yesql.fr/        | head -1   # 200
curl -sSI http://yesql.fr/         | head -1   # 301 → https
curl -sSI https://www.yesql.fr/    | head -1   # 301 → apex
curl -sSI https://yesql.fr/en/     | head -1   # 200
echo | openssl s_client -connect yesql.fr:443 -servername yesql.fr 2>/dev/null \
  | openssl x509 -noout -subject -dates
```

---

## Day-to-day

```bash
make serve        # write, check locally
make check        # what CI gates on: build to memory, fail on any warning
git commit -am "…" && git push
```

Push to `main` deploys. There is no staging environment; `make check` plus the
parity guard is the substitute. To deploy without a content change (say, after
editing the workflow), use **Actions → build & deploy → Run workflow**.

## Rolling back

The published site is whatever the last successful run built. To roll back:

```bash
git revert <sha> && git push
```

`git push --force` to move `main` backwards also works and is faster, but only
do that on a repository nobody else has cloned.

## What is not automated

- **The `docs/` directory is gitignored.** CI builds it. Do not commit it — if
  you ever do, remove it again, or local builds will produce noisy diffs.
- **The DNS records.** Deliberately manual; see step 4.
- **Kit form ids, the pledge URL.** Placeholders in `hugo.toml` and
  `data/campaigns/`. `lychee.toml` excludes them so CI stays green until you
  fill them in — remove each exclusion as you replace the placeholder, so the
  link check starts covering the real URL.

## If a deploy fails

| Symptom | Cause |
|---|---|
| `parity[fr vs en] …` in the build step | A price, tier id or scarcity figure changed in one language only. Fix the other file. |
| `Hugo emitted warnings` | Usually a missing layout or a broken `site.GetPage` path. The log line above the error names it. |
| lychee reports a dead link | An internal link points at a page that no longer exists. External URLs are only checked if you remove them from `lychee.toml`. |
| deploy job: "Pages site not found" | Settings → Pages → Source is not yet set to GitHub Actions (step 2). |
| Site loads but unstyled on `*.github.io` | Expected. `baseURL` is the apex domain; this resolves itself after the DNS cutover. |
| `NET::ERR_CERT_COMMON_NAME_INVALID` right after cutover | The certificate is still being provisioned. Wait, do not toggle Enforce HTTPS on and off repeatedly. |
