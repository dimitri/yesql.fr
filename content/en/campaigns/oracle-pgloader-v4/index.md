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

Your pledge is charged right away — there is no way to know in advance
whether the campaign reaches the threshold. If it doesn't, every pledge is
refunded in full. Above the threshold, work begins and code ships
continuously, under the same license as the rest of pgloader.

Reaching the full target funds the entire scope. Between the threshold and the
target, scope is cut in the order of the list above, and the list of what will
actually ship is published before development starts.

## How much to pledge

Pledge what makes sense for you. A symbolic amount if you're simply rooting
for this; more if a properly rewritten Oracle connector — no JDBC, correct
`NUMBER` and `CLOB` handling, partitioned tables — is worth real budget to
your team. Every pledge counts the same way toward the threshold, whatever
the amount.
