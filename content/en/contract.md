+++
title   = "Working with me"
type    = "contract"
slug    = "enterprise"
weight  = 10
nav     = "Enterprise"
description = "PostgreSQL expertise, direct: onsite sessions and upstream maintenance funding, from the person who does the work — no account layer, no bench, no intermediaries."
kicker  = "Direct, by design"
summary = "You talk to the person who does the work. No account manager translating your problem for someone else to solve, no bench of consultants you have not met. That is not a limitation — it is the point."

# Feeds the schema.org Service node. Quote-based work is discussed by email;
# the two priced offers already have their own Service/Course pages.
[service]
  type       = "PostgreSQL expertise and upstream open source maintenance"
  areaServed = "Europe"

# The two things you can actually engage for. Kept to two on purpose: each
# maps to its own page with its own price and its own commitment.
[[tiers]]
  id      = "onsite"
  name    = "Onsite"
  tag     = "a day, in person"
  bullets = [
    "A day at your office, on your schema and your queries",
    "Prepared in advance, not a generic deck",
    "Firm price, published on its own page",
  ]
  href = "/en/onsite/"
  cta  = "See the Onsite page"

[[tiers]]
  id      = "members"
  name    = "Upstream maintenance"
  tag     = "recurring, funds the tools"
  bullets = [
    "pgloader, pgcopydb, pg_auto_failover, pgextwlist",
    "Prioritized fixes, releases shipped, a say in the roadmap",
    "Public tiers, starting free",
  ]
  href = "/en/members/"
  cta  = "See the tiers"

[contact]
  label   = "Anything else"
  note    = "A structural question, a second opinion, something that does not fit either page above — write directly, no form in between."
  email   = "dim@tapoueh.org"
  subject = "Working together"
+++

This runs as a single-person practice, on purpose. Talking to the person who
will actually do the work — not an account manager relaying it to someone
else — means less gets lost between the problem and the fix, and the
incentive is to solve it, not to keep a service tier occupied.

Staying independent this way needs the same thing any small, focused
practice needs: to be funded by people who have an actual production need,
not by a marketing plan or a roadmap set somewhere else. That is what keeps
the work pointed at what matters to the people paying for it, and it is why
the two things on offer here are priced and public rather than sold through
a sales process — an onsite day, and funding for the maintenance of the
open source tools this work is built on.

For full production operations — a rota, an SLA, a team on call — that is a
different shape of work, and [Data Bene](https://data-bene.io/), the former
2ndQuadrant France team, does it well; we work alongside each other when a
project needs both.
