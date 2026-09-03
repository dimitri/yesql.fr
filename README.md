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

Hub and spokes. The home page is a **portfolio hub, not a landing page** — it
presents the work (OSS tools, writing, funding) flat, with no primary
call-to-action, and closes with one soft line pointing at the two paid offers.
Each paid offer still gets its own page with its own commercial intent — one
page, one job, one call to action there — because a hub can't simultaneously
read as a portfolio and rank hardest for a commercial search phrase; those are
different documents.

```
/fr/                          hub — portfolio, OSS, funding, writing, one soft closing note
/fr/entreprise/               ← "support PostgreSQL entreprise"   /en/enterprise/
/fr/immersion/                ← "formation PostgreSQL avancée"    /en/onsite/
/fr/membres/                  OSS maintenance + campaigns         /en/members/
/fr/financer-open-source/     essay: funding OSS outside a job    /en/funding-open-source/
/fr/references/               public proof, user quotes           /en/references/
/fr/a-propos/                 the person, the core contributions  /en/about/
/fr/campaigns/<slug>/         one per campaign                    /en/campaigns/<slug>/
/fr/mentions-legales/                                             /en/legal-notice/
```

URLs are localized by the `slug` in each page's front matter, but **the content
filenames are language-neutral and identical in both trees** — `contract.md` in
both, one slugged `entreprise`, the other `enterprise`. That is what makes
`/fr/entreprise/` and `/en/enterprise/` link to each other as translations, and what
lets the parity guard find a page's counterpart without a mapping table.

The one exception is the `campaigns/` directory name, which stays English in
both trees so the campaign layouts are shared. Campaign pages rank on the
feature name, not on a generic French noun, so the cost is small.

## Where the offers come from

Three offers, three different sources of truth. Getting this wrong is how a
site ends up quoting three different prices for the same thing.

| Page | The offer | Prices live in |
|---|---|---|
| `/entreprise/` | One-off engagements and second opinions. **No day-to-day operations** — the page says so and names Data Bene for that work. | Nowhere: quote-based |
| `/immersion/` | A full-day, personally-delivered, fully-customized technical session — not a generic deck. Distinct from theartofpostgresql.com's **Live Masterclass**, which is remote, recurring and open to all; the page says so and links to it. Scarcity ("4 a year") is stated as a total across all clients, not per client — see every mention of the figure on the page and on `/entreprise/`. The `[[workflow]]` (booking → materials → logistics → the day) and `[[travel]]` (short vs. long trip, and why long trips only offer the two-day format) arrays are structurally guarded like `[[agenda]]` — same count, same ids, same order in both languages — even though their prose isn't diffed word for word. | The page's own front matter, guarded by `assert-parity` |
| `/membres/` | Upstream maintenance for pgloader, pgcopydb, pg_auto_failover, pgextwlist. | `data/members.toml` |

**Members is not a new product.** It is the programme already sold at
<https://oss.theartofpostgresql.com/>, checked out through ThriveCart at
<https://sales.theartofpostgresql.com/oss-sponsors/>. `data/members.toml`
mirrors those tiers (€0 / €100 / €800 / €2k a month, plus €10k per release and
€3k fast-lane) so this site can describe them without a second price list
drifting away from the real one. **When a price changes over there, change it
in that one file.** The tier ids are the join between the data file and the
translated labels in `content/{fr,en}/members.md`.

What membership adds on this side is the **quarterly letter** — what moved in
The Art of PostgreSQL and in the maintained projects. That is the only thing on
the page that goes through a Kit form; the paid tiers go to ThriveCart.

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
| `headline` | Home only: the `<h1>` a human reads. `title` is home's own `<title>` tag (the one page that does not suffix `site.Title` — see `layouts/partials/head/meta.html`) and now targets identity ("YeSQL — Dimitri Fontaine") rather than a commercial phrase; that keyword targeting still lives on `/entreprise/`, `/immersion/` and `/membres/`. |

### 2. `content/{fr,en}/sections/*.md` — headless, shared fragments

What is rendered inside another page rather than being a page: `showcase.md`
(the OSS portfolio cards) and `writing.md` (the writing & teaching cards) both
read `data/showcase.toml`, filtered by each file's own `showcase_kinds`
front-matter key — one partial, `layouts/partials/sections/showcase.html`,
renders both. `footer.md` is the third. None of the three ever get a URL of
their own.

**A TOML footgun worth knowing about**, because it silently ate a whole
section once: a bare `key = value` written *after* a `[table]` header belongs
to that table, not to the top level, until the next `[table]` or the end of
the file. `content/{fr,en}/_index.md`'s `available` closing note learned this
the hard way — it was first written after `[members_teaser]` and silently
became `members_teaser.available` instead of a top-level key, so the section
just never rendered, with no error anywhere. It now sits above every `[table]`
header in that file. If a front-matter key mysteriously does nothing, check
what table it actually landed in before assuming the template is broken.

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
- an onsite price, currency or ISO workload that differs
- a scarcity figure that differs
- a subscription tier id or price that differs

`errorf` fails the build, so drift is caught in CI rather than shipped. To see it
work, change `price = 4500` in `content/fr/onsite.md` only, and run `make check`.

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
| Request a quote | `/entreprise/` · `/enterprise/` | email, company, need | `params.kit.quote` |
| Quarterly letter | `/membres/` · `/members/` | email only | `params.kit.members` |
| Book a slot | `/immersion/` · `/onsite/` | email, company, format, timeframe | `params.kit.onsite` |

Members' *paid* tiers do not go through a form at all — they check out on
ThriveCart. The Kit form on that page is only the quarterly letter.

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
  members     = "0000000"
  onsite      = "0000000"
```

The form ids come from each form's embed snippet in the Kit dashboard. The
account is `yesql.ck.page` — the embed already running on pgloader.io uses it. The
markup posts directly — no Kit JavaScript is loaded, so the site stays free of
third-party requests.

---

## Other things marked TODO

- `data/campaigns/oracle-pgloader-v4.toml` — the real `pledge_url`
- **`content/{fr,en}/references.md` — the `[[cases]]` array is empty on purpose.**
  The `[[quotes]]` above it are real: published pgloader user quotes lifted from
  pgloader.io. They are anonymous at the source — do not invent authors for them.
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
- **Family resemblance, own identity.** The grounds are tinted with The Art of
  PostgreSQL's deep purple `#372649`, so this reads as part of the same house as
  theartofpostgresql.com and oss.theartofpostgresql.com. The accent is **green**
  (`#4fb286` dark, `#1f6a4d` light) rather than TAOP's purple/sky-blue: YeSQL is
  the company, not the book, and should not be mistaken for either at a glance.
  `--taop`, `--taop-deep` and `--taop-sky` are kept for the rare cross-reference.
- **The hero carries one piece of art**: `layouts/partials/hero-graphic.html`,
  an inline SVG of a query plan drawn the way `EXPLAIN` prints one, with the two
  index scans picked out in the accent. Original rather than stock, decorative
  (`aria-hidden`), costs no request, and hidden below 64rem where it would fight
  the headline instead of sitting beside it.
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

The home page is the one exception, and deliberately so: it targets identity
("Dimitri Fontaine", "YeSQL") and the portfolio's own long-tail (the OSS tools
by name, "fund pgloader Oracle support") rather than any commercial phrase —
that keyword surface stays entirely on the three offer pages. This trades away
some chance of home ranking for "postgresql expert" in exchange for a page
that reads honestly as a portfolio rather than a landing page wearing a
portfolio's clothes.

`hreflang` is emitted from `layouts/partials/head/hreflang.html` with a correct
`x-default` pointing at the French version of each page. Schema.org
Structured data is emitted per page from `layouts/partials/head/ld-json.html`:
`Organization` and `Person` on every page with a stable `@id` so they read as
one entity across the site, `Service` only on the contract page, `Course` only
on the onsite page, and a `BreadcrumbList` on interior pages. Every figure
is read from the same front-matter key the visible page prints — there is no
second copy of a price anywhere.
