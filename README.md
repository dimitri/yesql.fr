# yesql.fr

Bilingual (French / English) marketing site for **YeSQL** — PostgreSQL support,
training and expertise. Hugo, custom layouts, no prebuilt theme, no JS
framework, no third-party requests at runtime.

Companion sites: [theartofpostgresql.com](https://theartofpostgresql.com/) (the
book) and [tapoueh.org](https://tapoueh.org/) (the technical blog).

---

## Running it locally

Requires **Hugo extended**, 0.164 or later:

```bash
brew install hugo
```

Then:

```bash
make serve
```

The site is at <http://localhost:1313/fr/> and <http://localhost:1313/en/>.
There is no content page at `/` — `defaultContentLanguageInSubdir` is on, so
both languages live in a subdirectory. Hugo always writes a redirect there;
`layouts/alias.html` overrides its template to branch on the visitor's browser
language, with a meta refresh to `/fr/` as the no-JS fallback.

| Target | What it does |
|---|---|
| `make serve` | Dev server, drafts and future content included |
| `make serve-pub` | Dev server as the public site would be |
| `make build` | Build into `docs/` (minified, GC'd) |
| `make check` | Build to memory, surface every warning — what CI runs |
| `make new-campaign SLUG=…` | Scaffold a fund-a-feature campaign |
| `make clean` | Remove `docs/` and the resource cache |

Deployment is GitHub Pages from `docs/` on push to `main`, via
`.github/workflows/deploy.yml`.

---

## Where the copy lives

Three places, each for one job. Knowing which is which is most of what you need
to maintain this site.

### 1. `content/{fr,en}/sections/*.md` — all landing-page copy

The homepage is assembled from six headless section files. They are never
rendered as pages of their own; `layouts/home.html` pulls them in by name.

```
content/fr/sections/hero.md        ←→  content/en/sections/hero.md
content/fr/sections/showcase.md    ←→  content/en/sections/showcase.md
content/fr/sections/contract.md    ←→  content/en/sections/contract.md
content/fr/sections/club.md        ←→  content/en/sections/club.md
content/fr/sections/masterclass.md ←→  content/en/sections/masterclass.md
content/fr/sections/footer.md      ←→  content/en/sections/footer.md
```

**The filenames are identical in both trees, on purpose.** The anchor id (`#contract`),
the partial that renders it, and the parity check all derive from the filename,
so nothing has to be kept in sync by hand. A CTA written as `href = "#contract"`
resolves under `/fr/` and `/en/` alike.

The front matter carries the structured bits (tiers, prices, bullets, CTA
labels); the markdown body carries the paragraphs. Both language files use the
same keys in the same order, so:

```bash
diff content/fr/sections/contract.md content/en/sections/contract.md
```

shows exactly the translated lines and nothing else. Keep it that way.

**Section order** lives in one place: the `$order` slice at the top of
`layouts/home.html`. Reordering the page means reordering that line. There are
deliberately no `weight` values in the section front matter — they would let the
French and English orders drift apart silently.

### 2. `data/*.toml` — language-neutral facts

Things that are not prose and must never exist twice:

- `data/org.toml` — company identity, feeds the schema.org `Organization` node
- `data/showcase.toml` — the showcase cards' URLs and technical labels (their
  descriptions are translated, in `sections/showcase.md` under `[blurbs]`)
- `data/campaigns/*.toml` — campaign figures, see below

### 3. `i18n/{fr,en}.toml` — template chrome only

Around twenty generic strings that belong to templates rather than to any one
page: form field labels, the funding widget's vocabulary, "skip to content".

Note the one gotcha: a TOML table swallows every key declared after it, so
`[fund_backers]` (the plural form) sits at the very **end** of each file. Add new
flat keys above it.

---

## The fr/en parity guard

Section prices are duplicated across the two language trees on purpose — that
way one content change stays one file edit. `layouts/partials/assert-parity.html`
runs at build time and calls `errorf` when the two sides disagree on anything a
buyer sees:

- a section that exists in one language but not the other
- differing anchor ids
- a different number of `[[tiers]]`, `[[proof]]` or `[[agenda]]` entries
- a renamed or reordered `id` in any of those
- a masterclass price, currency or ISO workload that differs
- a scarcity figure that differs
- a subscription tier id or price that differs

`errorf` fails the build, so drift is caught in CI rather than shipped. To see it
work, change `price = 3000` in `content/fr/sections/masterclass.md` only, and run
`make check`.

Campaign figures do *not* need this guard: they live in a single data file and
cannot diverge in the first place.

---

## Adding a "fund a feature" campaign

Campaigns are a reusable template. A new campaign is **three files and zero
template changes**.

```bash
make new-campaign SLUG=oracle-pgloader-v4
```

That creates:

```
data/campaigns/oracle-pgloader-v4.toml            ← every figure
content/fr/campaigns/oracle-pgloader-v4/index.md  ← French prose
content/en/campaigns/oracle-pgloader-v4/index.md  ← English prose
```

### The split rule

**Figures in `data/`, prose in `content/`.** No amount, target or percentage
may appear in a content file. The two are linked by one front-matter key,
`campaign = "<slug>"`, which must match the data filename.

The reason is maintenance: `raised` and `backers` change every time someone
pledges. If those numbers lived in the content files you would have to edit two
files in two languages to bump one figure, and sooner or later French and
English would show different totals.

### `data/campaigns/<slug>.toml`

| Key | Meaning |
|---|---|
| `status` | `open`, `funded` or `closed`. `open` campaigns show on the homepage; the others move into the "past campaigns" fold. Closing a campaign is this one word. |
| `currency` | ISO code. Formats per language automatically (`3 000 €` / `€3,000`). |
| `target` | Full scope. The progress bar's 100%. |
| `threshold` | **Below this, development does not start.** Drawn as a marker on the bar and stated in words underneath. |
| `raised`, `backers` | Current figures. These are the ones you update. |
| `opened`, `deadline`, `updated` | `YYYY-MM-DD`. `updated` is shown to readers so they know how fresh the number is. |
| `project`, `repo`, `license` | Which tool, where the code lands, under what license. |
| `pledge_url` | Where the CTA button sends people. |
| `[[tiers]]` | Pledge amounts, with an `id` each. **Amounts only** — the labels are translated. |

### The content files

Front matter carries `campaign`, `title`, `summary`, `weight` (ordering when
several campaigns are open), the CTA label, and `[tier_labels]` — one entry per
`[[tiers]]` `id` in the data file. The body is the pitch: what gets built, what
does not, and what the threshold means.

Both language files must use the **same `[tier_labels]` keys**, because those
keys index into the shared data file.

Drop `draft = true` from both when you are ready to publish.

### How the bar is computed

In `layouts/partials/campaign/facts.html`, once per campaign per build:

```
pct          = raised    / target * 100
pctThreshold = threshold / target * 100
```

The fill's width is `min(pct, 100)`, so an overfunded campaign does not overflow
the bar — while the legend underneath still prints the true percentage. The
threshold marker is positioned at `left: pctThreshold%` in the same coordinate
space as the fill, so it lines up by construction rather than by hand.

One Hugo detail worth knowing before you touch that file: it multiplies by the
float literal `100.0` *before* dividing. `div` on two integers is integer
division, and `18750 / 50000` would collapse to `0`.

The homepage card and the full campaign page render the identical widget from
the identical dict, so they cannot disagree with each other.

---

## The three CTAs

They are deliberately distinct — visually, structurally, and in their
analytics. Each posts to its own ConvertKit (Kit) form:

| CTA | Section | Fields | Kit form id |
|---|---|---|---|
| Request a quote | contract | email, company, need | `params.kit.quote` |
| Join the club | club | email only | `params.kit.club` |
| Book a slot | masterclass | email, company, format, timeframe | `params.kit.masterclass` |

Never merge them into one form or place two in the same section: separate ids
are what makes each conversion path measurable on its own.

### Wiring up the forms

Replace the three `0000000` placeholders in `hugo.toml`:

```toml
[params.kit]
  base        = "https://app.kit.com/forms"
  quote       = "0000000"
  club        = "0000000"
  masterclass = "0000000"
```

The form ids come from each form's embed snippet in the Kit dashboard. The
markup posts directly — no Kit JavaScript is loaded, so the site stays free of
third-party requests.

---

## Other things marked TODO

- `data/org.toml` — VAT number and SIRET
- `content/fr/mentions-legales.md` and `content/en/legal-notice.md` — legal form,
  capital, registered address
- `data/campaigns/oracle-pgloader-v4.toml` — the real `pledge_url`
- `hugo.toml` `[params.crosslinks]` — reciprocal links, once the matching inbound
  links exist on theartofpostgresql.com and tapoueh.org

`lychee.toml` excludes the placeholder URLs so they do not fail the CI link
check. Remove those exclusions as you fill each one in.

---

## Design notes

- **Dark by default.** The full palette is defined on bare `:root` in
  `assets/css/tokens.css`; light is an override, applied both under
  `prefers-color-scheme: light` and under `[data-theme="light"]` so the toggle
  wins in either direction. Only an explicit choice is stored in `localStorage`.
- **Accent** is PostgreSQL blue `#336791`. On the dark ground it fails contrast
  as text, so `--accent` lightens there and `#336791` is kept for fills that
  carry no text.
- **Fonts** are IBM Plex Sans and IBM Plex Mono, self-hosted from
  `static/fonts/`. No Google Fonts request — a `.fr` commercial site should not
  be handing visitor IPs to a font CDN.
- **Mobile-first, no horizontal scroll anywhere.** Pricing and tier comparisons
  are card grids, never `<table>` — a pricing table is the single most reliable
  way to make a phone scroll sideways.
- CSS is six plain files, concatenated, minified and content-hashed into one
  request by `layouts/partials/head/css.html`. Order matters: `tokens.css` first.

## SEO

Long-tail targets, baked into titles and summaries rather than stuffed:
"support PostgreSQL entreprise" / "PostgreSQL enterprise support", "expert
pgloader" / "pgloader expert", "formation PostgreSQL avancée" / "advanced
PostgreSQL training". Generic "PostgreSQL consultant" is deliberately not a
target.

`hreflang` is emitted from `layouts/partials/head/hreflang.html` with a correct
`x-default` pointing at the French version of each page. Schema.org
`Organization`, `Service` and `Course` are emitted as a single `@graph` from
`layouts/partials/head/ld-json.html`, reading the same front-matter keys the
visible page prints — there is no second copy of a price anywhere.
