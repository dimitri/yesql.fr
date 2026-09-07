+++
title   = "Mission, Vision, Strategy, Values"
type    = "mission"
slug    = "mission"
weight  = 15
nav     = "Mission"
description = "Why YeSQL exists and how it operates: bringing open source into the enterprise, the strategy behind the tools, and the values that keep a solo practice independent."
kicker  = "Why this exists"
summary = "The mission, the vision, the strategy, and the values behind YeSQL — stated in full, not as a slogan."

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
  preview = "A synergy between independent development and the structure companies expect."
[[toc]]
  id      = "strategy"
  label   = "Strategy"
  preview = "Four pillars, from user priorities to running code."
[[toc]]
  id      = "values"
  label   = "Values"
  preview = "Eight principles, from autonomy to continuous improvement."

[mission]
  lede = "Bring open source into the enterprise."
  body = "Make it so companies can rely on PostgreSQL and its open source ecosystem with the same accountability structure as a proprietary vendor — a contract, an SLA, someone to call when a major incident hits — without paying for the licensing dependency that usually comes bundled with it. Companies rarely buy proprietary software for its engineering; they buy the contract that keeps the person who chose it from being the one who gets blamed."

[vision]
  body = "A synergy between independent development and the structure companies expect. The bridge today: production-grade tools for PostgreSQL — pg_auto_failover, pgloader, pgcopydb — built for digital autonomy in the face of the cloud giants."

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

# Rendered as a yesql.conf-style block. `key` is a stable, language-neutral
# identifier (postgresql.conf directives are never translated either); the
# label carries the actual value as a trailing comment.
[[values]]
  key   = "autonomy"
  label = "Autonomy"
[[values]]
  key   = "technical_excellence"
  label = "Technical excellence"
[[values]]
  key   = "respect_for_individuals"
  label = "Respect for individuals over process"
[[values]]
  key   = "user_service"
  label = "Service to users"
[[values]]
  key   = "technique_serves_people"
  label = "Technique in service of people, not the reverse"
[[values]]
  key   = "concrete_decisions"
  label = "Concrete decisions, no committee politics"
[[values]]
  key   = "skill_transfer"
  label = "Skill transfer"
[[values]]
  key   = "continuous_improvement"
  label = "Continuous improvement"
+++

This is the frame behind [Enterprise](/en/enterprise/) and the tools
themselves — see [About](/en/about/) for the people and the projects it
plays out through.
