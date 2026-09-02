+++
title   = "References"
type    = "references"
slug    = "references"
weight  = 40
nav     = "References"
description = "Public, verifiable proof: core PostgreSQL contributions, open source tools in production, book and conference talks. Client references on request."
kicker  = "What is verifiable"
summary = "Public work can be checked without asking me. Contract work is under confidentiality — references are given during the conversation."

# ---------------------------------------------------------------------------
# Case studies. DELIBERATELY EMPTY FOR NOW: an honest page beats an invented
# case study.
#
# To add one, copy this block and fill it in. The shape that convinces is always
# the same: situation → what I found → what changed, with a number. Get written
# permission before naming a client; without it, "a European telecoms operator"
# still beats nothing.
#
# [[cases]]
#   id      = "case-slug"
#   client  = "Client name, or the sector if anonymous"
#   tag     = "migration"                 # migration | performance | HA | training
#   context = "The starting situation in one sentence, with the volumes."
#   finding = "What the diagnosis turned up — the part that proves the expertise."
#   outcome = "The result, with a number: migration time, latency, cost, incidents."
#   quote   = "A sentence from the client, if you have one."
#   author  = "First Last, role"
# ---------------------------------------------------------------------------

[on_request]
  title = "Client references"
  note  = "Engagements are covered by confidentiality agreements. I give named references, with those clients' agreement, at quote time — and put you in direct contact where that helps."

# Public proof needs nobody's permission.
[[public]]
  id    = "core"
  tag   = "PostgreSQL core"
  title = "Two core features"
  lede  = "`CREATE EXTENSION` and Event Triggers are mine. That code runs in every PostgreSQL installation, everywhere, since 9.1 and 9.3."
  url   = "https://www.postgresql.org/community/contributors/"
  cta   = "Official contributors list"
[[public]]
  id    = "tools"
  tag   = "tools"
  title = "Three tools in production"
  lede  = "pgloader is the de facto standard for migrating to PostgreSQL. pgcopydb and pg_auto_failover run for teams who have never had to talk to me. The code, the issues and the discussions are all public."
  url   = "https://github.com/dimitri"
  cta   = "The repositories"
[[public]]
  id    = "apt"
  tag   = "infrastructure"
  title = "apt.postgresql.org"
  lede  = "Debian maintainer, co-builder of the repository that has kept every supported PostgreSQL version installable on every supported Debian and Ubuntu release for well over a decade."
  url   = "https://wiki.postgresql.org/wiki/Apt"
  cta   = "The repository"
[[public]]
  id    = "book"
  tag   = "written"
  title = "The Art of PostgreSQL"
  lede  = "52 chapters on writing SQL for developers, and twenty years of technical writing on tapoueh.org. It is the masterclass material, and you can judge it before buying anything."
  url   = "https://theartofpostgresql.com/"
  cta   = "The book"
+++

A reference sheet can be manufactured. A commit in the PostgreSQL core cannot.
So this page leads with what you can verify yourself, without writing to me.
