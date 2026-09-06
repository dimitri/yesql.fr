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
  value = "Founded Dalibo (2005) and 2ndQuadrant France (2012; now [Data Bene](https://data-bene.io/)); joined [Citus Data](https://www.citusdata.com/blog/2018/01/12/dimitri-fontaine-postgresql-contributor-joins-citus-data/) (2018), acquired by Microsoft (2019–2025)"
[[facts]]
  label = "Learning"
  value = "[The Art of PostgreSQL](https://theartofpostgresql.com/), 52 chapters, plus a [course](https://theartofpostgresql.com/course/), live [masterclass](https://theartofpostgresql.com/masterclass/) sessions, and [team](https://theartofpostgresql.com/teams/) pricing"

# Labels for data/org.toml's [[elsewhere]], keyed by id. The URLs live in the
# data file — this is translation only, same split as [tier_labels] elsewhere.
[elsewhere_intro]
  title = "Elsewhere"
  lede  = "One person, several domains: the writing, the tools, and the code that backs all of it."

[elsewhere_categories]
  writing  = "Writing"
  tools    = "Tools"
  programs = "Programs"
  code     = "GitHub"

[elsewhere_labels]
  [elsewhere_labels.blog]
    label = "tapoueh.org"
    blurb = "Twenty years of technical writing on PostgreSQL."
  [elsewhere_labels.book]
    label = "The Art of PostgreSQL"
    blurb = "The book, the courses, and the free Lab."
  [elsewhere_labels.pgloaderio]
    label = "pgloader.io"
    blurb = "The tool's own site: install, usage, and format documentation."
  [elsewhere_labels.mysqltopgsql]
    label = "mysqltopgsql.com"
    blurb = "Migration methodology and PostgreSQL answers for MySQL developers."
  [elsewhere_labels.ossmembers]
    label = "oss.theartofpostgresql.com"
    blurb = "Members: fund the maintenance of pgloader, pgcopydb, pg_auto_failover and pgextwlist."
  [elsewhere_labels.github]
    label = "github.com/dimitri"
    blurb = "Every commit, in public."
  [elsewhere_labels.pgloader]
    label = "pgloader"
    blurb = "Migrations to PostgreSQL from MySQL, SQLite, and MS SQL Server."
  [elsewhere_labels.pgcopydb]
    label = "pgcopydb"
    blurb = "Parallel PostgreSQL-to-PostgreSQL copy and migration."
  [elsewhere_labels.pgautofailover]
    label = "pg_auto_failover"
    blurb = "Automated PostgreSQL high availability."
  [elsewhere_labels.pgextwlist]
    label = "pgextwlist"
    blurb = "A sudo model for PostgreSQL extension whitelisting."
  [elsewhere_labels.pgcharts]
    label = "pgcharts"
    blurb = "Turn PostgreSQL queries into charts, no dashboard required."
  [elsewhere_labels.regresql]
    label = "regresql"
    blurb = "Regression testing for hand-written SQL queries."
  [elsewhere_labels.sqlfmt]
    label = "sqlfmt"
    blurb = "A gofmt-style formatter for PostgreSQL SQL."
  [elsewhere_labels.pginstall]
    label = "pginstall"
    blurb = "The extension installer PostgreSQL never shipped with."
  [elsewhere_labels.prefix]
    label = "prefix"
    blurb = "A range type for prefix matching — phone numbers, IPs, IBANs."
  [elsewhere_labels.base36]
    label = "base36"
    blurb = "A base36 data type, stored internally as a bigint."
  [elsewhere_labels.elget]
    label = "el-get"
    blurb = "A package manager for Emacs, before Emacs had one."
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
