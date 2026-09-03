+++
title   = "Members"
type    = "members"
slug    = "members"
weight  = 30
nav     = "Members"
description = "Upstream maintenance for pgloader, pgcopydb, pg_auto_failover and pgextwlist: prioritized fixes, roadmap influence, and a quarterly letter for members only."
kicker  = "Open source maintenance, co-funded"
summary = "Fund the maintenance of the tools your production depends on, together. Prioritized fixes, releases shipped, roadmap influence — and a quarterly letter for members only."

[cta]
  label = "Become a member"
  href  = "#form-members"
  note  = "The quarterly letter is free. Maintenance tiers are bought on the store."

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

[programme]
  title = "The tiers live on oss.theartofpostgresql.com"
  note  = "The maintenance programme and its store already exist; I am not duplicating them here. This page explains what they are for and what membership adds to them. You subscribe over there."
  cta   = "See the programme"

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

# Threshold crowdfunding, for one identified feature.
[fund]
  title = "Fund a feature"
  tag   = "threshold campaign"
  lede  = "Some features are bigger than a recurring tier can fund. Those get their own campaign: a written scope, a target amount, and a published start threshold."
  bullets = [
    "Technical scope written up front, not an intention",
    "Start threshold shown, not implied",
    "The result is open source, including for those who did not fund it",
  ]
+++

The tools I maintain run in production for people I have never met, and that
is exactly as it should be. But maintenance costs something, and somebody
pays it: either you, waiting on a fix, or a group of companies funding it
together and becoming, in exchange, members of the programme.

Becoming a member is the second option.
