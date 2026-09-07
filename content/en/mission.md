+++
title   = "Mission, Vision, Strategy, Values"
type    = "mission"
slug    = "mission"
weight  = 15
nav     = "Mission"
description = "Why YeSQL exists and how it operates: bringing open source into the enterprise, the strategy behind the tools, and the values that keep a solo practice independent."
kicker  = "Why this exists"
summary = "The mission, the vision, the strategy, and the values behind YeSQL — stated in full, not as a slogan."

# A bare key placed after ANY table header (single [table] or [[array]])
# belongs to that table until the next header appears — not just to the
# immediately preceding array of tables (see the TOML footgun note in
# README.md). This flat array has to sit above every [table]/[[array]]
# header in the file, not just above [[strategy]].
values = [
  "Autonomy",
  "Technical excellence",
  "Respect for individuals over process",
  "Service to users",
  "Technique in service of people, not the reverse",
  "Concrete decisions, no committee politics",
  "Skill transfer",
  "Continuous improvement",
  "Fast iterations",
]

[section_labels]
  mission  = "Mission"
  vision   = "Vision"
  strategy = "Strategy"
  values   = "Values"

# The top-of-page preview strip: real statements, not category names, so a
# reader knows what is actually in each section before scrolling past it.
[[toc]]
  id      = "mission"
  label   = "Mission"
  preview = "Bring open source into the enterprise."
[[toc]]
  id      = "vision"
  label   = "Vision"
  preview = "The bridge between enterprise engagement and open source, blind spots included."
[[toc]]
  id      = "strategy"
  label   = "Strategy"
  preview = "User priorities, knowledge transfer, sustainability, fast iterations."
[[toc]]
  id      = "values"
  label   = "Values"
  preview = "Nine principles, from autonomy to fast iterations."

[mission]
  lede = "Bring open source into the enterprise."
  body = "Make it so companies can get the same trust and accountability structure from PostgreSQL and its open source ecosystem that they currently only get from a proprietary vendor — without the vendor lock-in, and the total cost of ownership that comes with it. Companies rarely buy proprietary software for its engineering; they buy the contract that keeps the person who chose it from being the one who gets blamed."

[vision]
  body = [
    "Bridge two different ways of working: how the enterprise is used to operating — subcontracting, time-and-materials or fixed-price, licensing, support lines — and how open source actually works. That model has already proven itself: it produces the better result on everything that counts — quality, engineering, production fitness, fit for the problem. PostgreSQL is the clearest proof of it: on [DB-Engines' own ranking](https://db-engines.com/en/ranking), it's the only system in the top four still gaining ground while Oracle, MySQL and SQL Server are all losing it — and per the [Stack Overflow Developer Survey](https://survey.stackoverflow.co/2025/technology), it's \"the most desired and the most admired technology in your category,\" ranked highest on both since 2023.",
    "Open source has one structural blind spot: what no volunteer is willing to work on remains a gap, in any project. In the PostgreSQL community today, that gap sits around archiving and, more broadly, the production-architecture tooling that wraps the core — core PostgreSQL development itself is well-funded and well-staffed; what surrounds it in production is not always. Take high availability and disaster recovery: today's tooling splits them along a technical line — HA on one side, DR bundled with backups on the other — when what users actually want is HA and DR together, with backups as its own separate concern. The next version of pg_auto_failover fixes exactly that.",
    "The ecosystem I maintain is meant to help with production architecture (pg_auto_failover, pgextwlist, pginstall, pgcopydb) and with migrating onto PostgreSQL (pgloader, pgcopydb).",
  ]

# Reuses the onsite page's numbered workflow-step component (same class
# names) rather than a second version of the same pattern.
[[strategy]]
  step = "1"
  name = "Open source support, user priorities"
  lede = "Development follows real production needs, arbitrated by a coherent technical vision."
[[strategy]]
  step = "2"
  name = "Empowerment through knowledge transfer"
  lede = "The book and courses of The Art of PostgreSQL give teams the means to understand, not just to use."
[[strategy]]
  step = "3"
  name = "A sustainable business model"
  lede = "Built to last, without depending on fundraising or an acquisition."
[[strategy]]
  step = "4"
  name = "A working prototype beats a design document"
  lede = "Decisions are settled on running code, not on specifications."
+++

This is the frame behind [Enterprise](/en/enterprise/) and the tools
themselves — see [About](/en/about/) for the people and the projects it
plays out through.
