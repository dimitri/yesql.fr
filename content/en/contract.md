+++
title   = "Working with me"
type    = "contract"
slug    = "enterprise"
weight  = 10
nav     = "Companies"
description = "PostgreSQL enterprise support: I am not a services company. One-off engagements from the author of CREATE EXTENSION, with day-to-day operations handled by Data Bene."
kicker  = "What I do, and what I do not"
summary = "I am not a services company. One person, one-off engagements, and a partner for everything that needs a team and an on-call rota."

[cta]
  label = "Request a quote"
  href  = "#form-quote"
  note  = "Answer within two business days. If what you need is day-to-day operations, I will say so immediately and point you elsewhere."

# What I actually do. No rate card here: scope is a conversation, and the only
# firm price on this site is the seminar's.
[[tiers]]
  id      = "seminar"
  name    = "The engagement"
  tag     = "conference format"
  bullets = [
    "A day onsite, conference format: a talk, then your own queries",
    "On your real schema, your query plans, your data volumes",
    "Four a year, no more",
    "Firm price, published on the seminar page",
  ]

[[tiers]]
  id      = "review"
  name    = "The second opinion"
  tag     = "one-off"
  bullets = [
    "One structural decision to settle: modeling, indexing, migration",
    "Schema review, query plan review, extension strategy",
    "A few days, a written report, not a yearly commitment",
    "Most useful before you build, rarely after",
  ]

[[tiers]]
  id      = "oss"
  name    = "My open source tools"
  tag     = "upstream maintenance"
  bullets = [
    "pgloader, pgcopydb, pg_auto_failover, pgextwlist",
    "Prioritized fixes, releases shipped, influence on the roadmap",
    "Recurring subscription, public pricing",
    "That is what the Circle is for — the tiers are on its own page",
  ]

# The most important part of this page: say no clearly, and say who to ask
# instead. Saying yes to everything is the least credible signal there is.
[not_this]
  title = "What I do not do"
  lede  = "I am one person. There is no 24×7 rota, no operations team and no bench behind me, and pretending otherwise would show at the first incident."
  items = [
    "24×7 on-call and managed production operations",
    "Day-to-day DBA work, on site or on secondment",
    "Level 1 and 2 support across an estate",
    "Fixed-price delivery over several months",
  ]

  [not_this.partner]
    name = "Data Bene"
    url  = "https://data-bene.io/"
    note = "For all of that I work with **Data Bene** — the former 2ndQuadrant France team, where I spent several years myself. They have the people, the rota and the process. When a project needs both, we work together: they take operations, I take the one-off work and the open source upstream."

# Feeds the schema.org Service node. Quote-based, so no price.
[service]
  type       = "PostgreSQL expertise and upstream open source maintenance"
  areaServed = "Europe"
+++

Most consulting sites say yes to everything. This one starts by saying no,
because half of what arrives here is day-to-day operations, and I do not do
day-to-day operations.

What I do fits in a sentence: I come in for one-off work, on structural
decisions and on the code I write and maintain.
