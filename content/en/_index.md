+++
# `title` is this page's own <title> tag (home is the one page that does not
# suffix site.Title — see layouts/partials/head/meta.html); `headline` is the
# H1 a human reads. Both now target identity/portfolio, not a commercial
# search phrase — that keyword targeting stays on /enterprise/, /onsite/ and
# /members/, which are still the pages meant to rank for it.
title    = "YeSQL — Dimitri Fontaine: PostgreSQL Portfolio"
headline = "YeSQL: PostgreSQL expertise and open source portfolio"
description = "PostgreSQL Major Contributor, author of The Art of PostgreSQL, and maintainer of pgloader, pgcopydb, pg_auto_failover and pgextwlist. Everything in one place: the tools, the writing, and how to fund the work."

kicker  = "YeSQL · Dimitri Fontaine"
summary = "Contributor to PostgreSQL core, author of *The Art of PostgreSQL*, and maintainer of pgloader, pgcopydb, pg_auto_failover and pgextwlist. This page is the map of all of it."

# Proof, kept as identity rather than as a sales opener: the credential that
# cannot be manufactured, first.
# The one soft mention of paid, one-off work — a closing remark, not a
# landing-page CTA. Markdown links, rendered via RenderString. Placed here,
# above every [table] header, because a bare key after a TOML table header
# belongs to that table, not to the top level — this one got silently
# swallowed by [members_teaser] the first time it was written below it.
available = "If any of this is directly useful to your team: I take on a small number of [one-off engagements](/en/enterprise/) each year, and I occasionally [come work with a team on site](/en/onsite/) for a day or two — four sessions a year, across everyone, not per client. No pressure either way; the rest of this page is the same whether or not that is what you came for."

[[proof]]
  value = "PostgreSQL Major Contributor"
  label = "`CREATE EXTENSION` and Event Triggers are mine"
  href  = "https://www.postgresql.org/community/contributors/"
[[proof]]
  value = "1999"
  label = "first PostgreSQL database in production"
[[proof]]
  value = "pgloader · pgcopydb · pg_auto_failover · pgextwlist"
  label = "author and maintainer"

# Fund a feature — given real prominence: its own section, high on the page,
# right after the OSS portfolio it funds. Intro copy only; the campaigns
# themselves are discovered from content/en/campaigns/ by
# partials/campaign/open-list.html.
[fund]
  tag   = "threshold campaign"
  title = "Fund a feature"
  lede  = "Some features are bigger than day-to-day maintenance can cover. This is the current one: a written scope, a target amount, and a published start threshold below which the work does not happen."
  bullets = [
    "Technical scope written up front, not an intention",
    "Start threshold shown, not implied",
    "The result is open source, including for those who did not fund it",
  ]

# A quiet pointer to the recurring side of OSS funding — the full tier ladder
# lives on /members/, this is not a second copy of it.
[members_teaser]
  tag   = "the other way to back this work"
  title = "Recurring support, if a campaign is not the fit"
  lede  = "Members fund the day-to-day maintenance of these tools year-round: priority fixes, roadmap input, a quarterly letter on what moved. Tiers start free."
  cta   = "See the tiers"
  href  = "/en/members/"
+++

This is the map: the open source tools I maintain, what I write and teach, and
the two ways to help fund the work — a specific feature, or ongoing
maintenance. Everything below is public and you can check all of it yourself.
