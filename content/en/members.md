+++
title   = "Members"
type    = "members"
slug    = "members"
weight  = 30
nav     = "Members"
description = "Upstream maintenance for pgloader, pgcopydb, pg_auto_failover and pgextwlist: prioritized fixes, roadmap influence, and a quarterly letter for members only."
kicker  = "Open source maintenance, co-funded"
summary = "Fund the maintenance of the tools your production depends on, together. Prioritized fixes, releases shipped, roadmap influence — and a quarterly letter for members only."

# Labels for the recurring tiers, keyed by the `id` in data/members.toml.
# No amount here: the prices live in the data file, exactly once.
[tier_labels]
  [tier_labels.community]
    name = "Community"
    lede = "For evaluating, or for non-critical use."
    what = "Best-effort, through GitHub, like everyone else."
  [tier_labels.supporter]
    name = "Supporter"
    lede = "Your issues stop getting lost in the queue."
    what = "Priority queue, answered within a few days."
  [tier_labels.professional]
    name = "Professional"
    lede = "When a production system depends on the tool."
    what = "Your patches are triaged under an SLA and land in the next release."
  [tier_labels.sponsor]
    name = "Sponsor"
    lede = "When your roadmap depends on its roadmap."
    what = "Roadmap input, and development bandwidth reserved for you."

# One-off purchases.
[oneoff_labels]
  [oneoff_labels."per-release"]
    name = "Release sponsor"
    unit = "per release"
    what = "Your fixes and features prioritized in one given release, and your name in the release notes."
    note = "One sponsor per release."
  [oneoff_labels."fast-lane"]
    name = "Fast lane"
    unit = "per issue"
    what = "One specific blocker, handled and shipped in the next release."

# Membership's own benefit — the one the store does not sell.
[newsletter]
  title = "The quarterly letter"
  tag   = "members only"
  lede  = "Four times a year, what moved — in The Art of PostgreSQL and in the projects I maintain. Not a blog digest, not a promotion."
  bullets = [
    "What is new in The Art of PostgreSQL: chapters, workshops, material",
    "What shipped in pgloader, pgcopydb, pg_auto_failover and pgextwlist",
    "What I am working on next, and why",
    "Where the open funding campaigns stand",
  ]
  note = "Four sends a year. One-click unsubscribe."

# A pointer to the separate threshold-crowdfunding page — not a second
# pitch here. Membership funds day-to-day maintenance; a campaign funds one
# named feature, which is a different commitment with its own page.
[campaign_teaser]
  note = "Prefer backing one specific feature outright instead of a subscription?"
  cta  = "See the current campaign"
  href = "/en/campaigns/"
# Enterprise procurement. The tier grid above sends every buyer to a
# ThriveCart checkout that takes a card — which is precisely what a large
# company's policy forbids. This block is the other door, and it exists
# because a real buyer wrote in unable to use the first one.
[procurement]
  title = "Buying through procurement?"
  note  = "Every tier is available on invoice: annual or monthly, paid by bank transfer, with your purchase-order number on the invoice. YeSQL is a French SAS — registration, VAT number and bank details are on the legal notice, and supplier-onboarding paperwork is no trouble."
  cta   = "Ask for an invoice"
  link_label = "legal notice"
  link_href  = "/en/legal-notice/"
+++

The tools I maintain run in production for people I have never met, and that
is exactly as it should be. But maintenance costs something, and somebody
pays it: either you, waiting on a fix, or a group of companies funding it
together and becoming, in exchange, members of the programme.

Becoming a member is the second option.
