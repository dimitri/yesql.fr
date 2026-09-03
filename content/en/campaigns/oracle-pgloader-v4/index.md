+++
title    = "Oracle support for pgloader v4"
# Points at data/campaigns/oracle-pgloader-v4.toml, which carries ALL the
# figures. No amount may appear in this file.
campaign = "oracle-pgloader-v4"
date     = 2026-01-15
weight   = 10
summary  = "Fund the rewrite of pgloader's Oracle connector for v4, released under an open source license."
description = "Funding campaign: Oracle support in pgloader v4. pgloader expert, Oracle to PostgreSQL migration."

[cta]
  label = "Back this"

# Tier labels, keyed by the `id` of the [[tiers]] in the data file. The amounts
# live in the data file, not here.
[tier_labels]
  individual = "Backer — credited in the release notes"
  company    = "Company — one real migration case prioritized in the test suite"
  sponsor    = "Sponsor — architecture review of your Oracle migration included"
+++

pgloader's Oracle connector works, and it carries ten years of technical debt.
It depends on a JDBC layer that complicates installation, does not handle
partitions properly, and treats `NUMBER` and `CLOB` types approximately.

## Where it stands

The amount raised so far is my own investment — seed money to get the
connector rewrite properly scoped before asking anyone else to back it.
Backing from here is what moves it past the threshold and into active
development.

## What gets built

- A full connector rewrite, with no Java dependency
- Exact handling of `NUMBER`, `CLOB`, `BLOB`, `TIMESTAMP WITH TIME ZONE`
- Support for partitioned tables and materialized views
- Schema migration: constraints, indexes, sequences, comments
- Integration test suite against Oracle 19c and 23ai
- Oracle to PostgreSQL migration documentation

## What does not get built

Porting PL/SQL to PL/pgSQL. That is a different kind of work, and it gets its
own campaign if there is demand for it.

## The threshold

Below the start threshold, development does not start and pledges are not
charged. Above it, work begins and code ships continuously, under the same
license as the rest of pgloader.

Reaching the full target funds the entire scope. Between the threshold and the
target, scope is cut in the order of the list above, and the list of what will
actually ship is published before development starts.
