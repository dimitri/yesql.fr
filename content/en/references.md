+++
title   = "References"
type    = "references"
slug    = "references"
weight  = 40
nav     = "References"
description = "Public, verifiable proof: core PostgreSQL contributions, open source tools in production, book and conference talks. Client references on request."
kicker  = "What is verifiable"
summary = "Public work can be checked without asking me. Contract work is under confidentiality — references are given during the conversation."

# One real case study below, Redpill Linpro, is not a fresh client
# reference — it is retold from pgloader's own 2018 white paper, where it
# was already published under that name by its author. Nothing new is being
# named here without that prior, public permission.
#
# To add another, copy this block and fill it in. The shape that convinces is
# always the same: situation → what I found → what changed, with a number.
# Get written permission before naming a client; without it, "a European
# telecoms operator" still beats nothing.
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
[[cases]]
  id      = "redpill-linpro"
  client  = "Redpill Linpro"
  tag     = "migration"
  context = "One of Redpill Linpro's customers asked them for the most efficient way to migrate from Microsoft SQL Server to PostgreSQL."
  finding = "No pgloader source connector covered MS SQL Server at the time — the customer's fastest path didn't exist yet."
  outcome = "Redpill Linpro sponsored the connector. It shipped as open source, so it now benefits every pgloader user, not only the customer who first needed it."
# ---------------------------------------------------------------------------

# Real pgloader user quotes, named exactly as their authors published them
# themselves — in pgloader's own 2018 white paper, or their own tweet. Never
# invent an attribution that isn't already public at the source.
[[quotes]]
  id     = "iwoca"
  text   = "We were able to migrate our main database from MySQL to Postgres, moving hundreds of tables used by our complex Django project. Dimitri implemented a new feature for us quickly and smoothly."
  source = "Andrea Crotti, Iwoca"
[[quotes]]
  id     = "complex"
  text   = "Fusionbox used pgloader on a project for a large government agency. We needed to migrate a large set of data from an existing SQL Server cluster to a new PostgreSQL solution. pgloader greatly reduced the time required to accomplish this complex migration."
  source = "Alexander Groth, Fusionbox"
  url    = "http://www.fusionbox.com/"
[[quotes]]
  id     = "commafeed"
  text   = "It made our migration from MySQL to PostgreSQL really easy (~1Tb) — almost too easy: I just ran the one-liner and waited for 48 hours. Nothing to change in the app, thanks to Hibernate."
  source = "CommaFeed, via Twitter"
  url    = "https://twitter.com/CommaFeed/status/568053907370450944"

[quotes_note]
  title = "What users say"
  note  = "As published in [pgloader's 2018 white paper](https://pgloader.io/MigratingToPostgreSQL.pdf), or in the case of CommaFeed, in their own tweet."

# Public proof needs nobody's permission.
[[public]]
  id    = "core"
  tag   = "PostgreSQL core"
  title = "Two core features"
  lede  = "I contributed `CREATE EXTENSION` and Event Triggers to PostgreSQL core. That code has been running in every PostgreSQL installation, everywhere, since versions 9.1 and 9.3."
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
  id    = "migrations"
  tag   = "migrations"
  title = "Migrations actually delivered"
  lede  = "pgloader migrates whole databases from MySQL, SQLite, MS SQL Server and Oracle. The quotes below are from its users, published on pgloader.io."
  url   = "https://pgloader.io/"
  cta   = "pgloader.io"
[[public]]
  id    = "book"
  tag   = "written"
  title = "The Art of PostgreSQL"
  lede  = "52 chapters on writing SQL for developers, and twenty years of technical writing on tapoueh.org. It is the Onsite material, and you can judge it before buying anything."
  url   = "https://theartofpostgresql.com/"
  cta   = "The book"
+++

A reference sheet can be manufactured. A commit in the PostgreSQL core cannot.
So this page leads with what you can verify yourself, without writing to me.
