+++
title   = "Dimitri Fontaine"
type    = "about"
slug    = "about"
weight  = 50
nav     = "About"
description = "PostgreSQL Major Contributor, author of CREATE EXTENSION and Event Triggers, of The Art of PostgreSQL, of pgloader, pgcopydb and pg_auto_failover."
kicker  = "About"
summary = "PostgreSQL Major Contributor. Two of the contributions — CREATE EXTENSION and Event Triggers — now ship in every PostgreSQL installation in the world."

[photo]
  src = "/img/dimitri-fontaine.png"
  alt = "Dimitri Fontaine"
  credit = "Picture by Oleg Bartunov"

[archive]
  src     = "/img/pgcon-2006-toronto.jpg"
  alt     = "The PostgreSQL directional sign at PGCon 2006 in Toronto, covered in the attending hackers' signatures"
  caption = "PGCon 2006, Toronto — the venue sign, signed by everyone in the room. Mine is in there somewhere."

# Core PostgreSQL contributions. This is the strongest proof on the site: this
# code runs everywhere, including at your competitors'.
[[core]]
  name = "CREATE EXTENSION"
  url  = "https://www.postgresql.org/docs/current/extend-extensions.html"
  lede = "The packaging system that lets you distribute and install add-ons. Before extensions, a third-party module meant patching the source tree; since then they are first-class citizens of the ecosystem."
[[core]]
  name = "CREATE EVENT TRIGGER"
  url  = "https://www.postgresql.org/docs/current/event-triggers.html"
  lede = "DDL-level triggers that fire on schema changes, giving programmatic control over CREATE TABLE, DROP INDEX, and the rest of the DDL vocabulary."

[[facts]]
  label = "Standing"
  value = "PostgreSQL Major Contributor"
  url   = "https://www.postgresql.org/community/contributors/"
[[facts]]
  label = "Debian"
  value = "Maintainer, co-builder of apt.postgresql.org"
  url   = "https://qa.debian.org/developer.php?login=dim@tapoueh.org"
[[facts]]
  label = "Conferences"
  value = "Regular speaker since 2008"
  url   = "https://tapoueh.org/conf/"
[[facts]]
  label = "Background"
  value = "Founded Dalibo (2005) and 2ndQuadrant France (2012); Citus Data, then Microsoft by acquisition (2018–2025)"
[[facts]]
  label = "Book"
  value = "The Art of PostgreSQL, 52 chapters"
  url   = "https://theartofpostgresql.com/"
+++

PostgreSQL developer, author and open source builder, based near Paris. Most of
what I have done professionally for the past twenty-plus years has orbited
around PostgreSQL: writing code for the database itself, building tools on top
of it, teaching it, and occasionally starting or running companies around it.

## Background

I have started several companies with open source at the core, spent time as
CTO and CEO, then moved back into a principal engineering role. I spent a number
of years at 2ndQuadrant doing PostgreSQL consulting and development, then joined
Citus Data to work on distributed PostgreSQL and build pg_auto_failover. Citus
was acquired by Microsoft in 2019.

## Why "YeSQL"

It was a pun on NoSQL, back when everyone was explaining that relational
databases had had their day. The joke has aged; the position has not. In those
years teams moved work into their application code that their database was
already doing better — joins, aggregates, constraints, transactions.

It is the same idea as the book: most teams leave enormous query power on the
floor, not because PostgreSQL is hard, but because nobody showed them what it
can actually do.
