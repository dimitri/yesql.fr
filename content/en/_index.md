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
summary = "Everything I do, in one place: PostgreSQL core contributions, the open source tools, consulting, the book, onsite training, conference talks, free lessons, and the blog."

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
  label = "co-authored `CREATE EXTENSION` and Event Triggers"
  href  = "https://www.postgresql.org/community/contributors/"
[[proof]]
  value = "pgloader, since 2005"
  label = "still actively maintained, twenty years on"
[[proof]]
  value = "pgloader · pgcopydb · pg_auto_failover · pgextwlist"
  label = "author and maintainer"

# A quiet pointer to the recurring side of OSS funding — the full tier ladder
# lives on /members/, this is not a second copy of it. The current campaign
# is now a card inside the OSS portfolio grid above, not its own section, so
# this introduces the *other* way to fund the work rather than assuming the
# reader just saw a dedicated campaign section immediately before it.
[members_teaser]
  tag   = "another way to back this work"
  title = "Recurring support, funding maintenance year-round"
  lede  = "Beyond backing a specific feature: Members fund the day-to-day maintenance of these tools — priority fixes, roadmap input, a quarterly letter on what moved. Tiers start free."
  cta   = "See the tiers"
  href  = "/en/members/"
+++

One page, all of it: the open source tools I maintain, the consulting and
training work, what I write and teach, and the two ways to help fund the
work — a specific feature, or ongoing maintenance. Everything below is
public and you can check all of it yourself.
