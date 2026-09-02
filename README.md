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
`.github/workflows/deploy.yml`. See **[DEPLOY.md](DEPLOY.md)** for the repository
setup, the DNS records for the apex domain, and the TLS steps.

---

## Site structure

Hub and spokes. One page, one job, one call to action — a single page carrying
three different offers serves neither the SEO targets (one URL cannot rank for
three intents) nor conversion (three competing CTAs is a landing page with no
landing).

```
/fr/                          hub — proof, three routes, one primary CTA
/fr/contrat/                  ← "support PostgreSQL entreprise"   /en/contract/
/fr/masterclass/              ← "formation PostgreSQL avancée"    /en/masterclass/
/fr/club/                     subscription + campaigns            /en/club/
/fr/references/               public proof, case studies          /en/references/
/fr/a-propos/                 the person, the core contributions  /en/about/
/fr/campaigns/<slug>/         one per campaign                    /en/campaigns/<slug>/
/fr/mentions-legales/                                             /en/legal-notice/
```

URLs are localized by the `slug` in each page's front matter, but **the content
filenames are language-neutral and identical in both trees** — `contract.md` in
both, one slugged `contrat`, the other `contract`. That is what makes
`/fr/contrat/` and `/en/contract/` link to each other as translations, and what
lets the parity guard find a page's counterpart without a mapping table.

The one exception is the `campaigns/` directory name, which stays English in
both trees so the campaign layouts are shared. Campaign pages rank on the
feature name, not on a generic French noun, so the cost is small.

## Where the copy lives

Three places, each for one job. Knowing which is which is most of what you need
to maintain this site.

### 1. Page front matter and body

Each page carries its own copy: the front matter holds the structured bits
(tiers, prices, bullets, CTA labels, proof items), the markdown body holds the
paragraphs. Both language files use the same keys in the same order, so:

```bash
diff content/fr/contract.md content/en/contract.md
```

shows exactly the translated lines and nothing else. Keep it that way.

Front matter keys that drive the site rather than the copy:

| Key | What it does |
|---|---|
| `type` | Picks the layout: `layouts/<type>/page.html` |
| `slug` | The localized last URL segment |
| `weight` | Nav order — the header reads it, so nav and structure cannot drift |
| `nav` | Short nav label, separate from the page's real `<h1>` |
| `headline` | Home only: the `<h1>` a human reads, while `title` targets the query |

### 2. `content/{fr,en}/sections/*.md` — headless, shared fragments

What is rendered inside another page rather than being a page: `showcase.md`
(the hub's proof cards) and `footer.md`. They never get a URL of their own.

### 3. `data/*.toml` and `i18n/{fr,en}.toml`
## The two build-time guards

**`assert-translated.html`** runs from `baseof.html` for every page. A page that
exists in one language and not the other fails the build, so the language
switcher can never dead-end. Campaign bundles warn instead of failing, since a
campaign may legitimately be drafted in one language first.

**`assert-parity.html`** runs from the layouts that render priced content.
Prices are duplicated across the two language trees on purpose — that
way one content change stays one file edit. `layouts/partials/assert-parity.html`
runs at build time and calls `errorf` when the two sides disagree on anything a
buyer sees:

- differing anchor ids
- a different number of `[[tiers]]`, `[[proof]]` or `[[agenda]]` entries
- a renamed or reordered `id` in any of those
- a masterclass price, currency or ISO workload that differs
- a scarcity figure that differs
- a subscription tier id or price that differs

`errorf` fails the build, so drift is caught in CI rather than shipped. To see it
work, change `price = 3000` in `content/fr/masterclass.md` only, and run `make check`.

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

| CTA | Page | Fields | Kit form id |
|---|---|---|---|
| Request a quote | `/contrat/` · `/contract/` | email, company, need | `params.kit.quote` |
| Join the club | `/club/` | email only | `params.kit.club` |
| Book a slot | `/masterclass/` | email, company, format, timeframe | `params.kit.masterclass` |

One per page, and never two on the same page: separate pages and separate form
ids are what make each conversion path measurable on its own. The hub carries a
single primary CTA — the contract — and routes to the other two rather than
competing with them.

`partials/cta-contract.html` renders that primary CTA, resolved from the
contract page so its label and localized URL exist in one place. It closes the
pages that build credibility without selling on their own (`/references/`,
`/a-propos/`).

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

- `data/campaigns/oracle-pgloader-v4.toml` — the real `pledge_url`
- **`content/{fr,en}/references.md` — the `[[cases]]` array is empty on purpose.**
  The template is ready and the shape is documented in a comment inside each
  file: *situation → what I found → what changed*, with a number. This is the
  largest remaining gap between this site and every comparable consultancy, and
  it is the one thing that cannot be written without you. Get written permission
  before naming a client; "a European telecoms operator" still beats nothing.
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

Each page owns one intent, which is the point of the multi-page structure.
Long-tail targets, baked into titles and summaries rather than stuffed:
"support PostgreSQL entreprise" / "PostgreSQL enterprise support", "expert
pgloader" / "pgloader expert", "formation PostgreSQL avancée" / "advanced
PostgreSQL training". Generic "PostgreSQL consultant" is deliberately not a
target.

`hreflang` is emitted from `layouts/partials/head/hreflang.html` with a correct
`x-default` pointing at the French version of each page. Schema.org
Structured data is emitted per page from `layouts/partials/head/ld-json.html`:
`Organization` and `Person` on every page with a stable `@id` so they read as
one entity across the site, `Service` only on the contract page, `Course` only
on the masterclass page, and a `BreadcrumbList` on interior pages. Every figure
is read from the same front-matter key the visible page prints — there is no
second copy of a price anywhere.
