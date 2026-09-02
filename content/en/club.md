+++
title   = "The user club"
type    = "club"
slug    = "club"
weight  = 30
nav     = "The club"
description = "Pro support subscription for pg_auto_failover, pgcopydb and pgloader, plus threshold crowdfunding for open source features."
kicker  = "Two mechanisms, kept apart"
summary = "Fund one specific open source feature, or subscribe to recurring pro support on the tools I maintain."

[cta]
  label = "Join the club"
  href  = "#form-club"
  note  = "One email address. Nothing else."

# ---------------------------------------------------------------------------
# Card A — threshold crowdfunding. The campaigns themselves are discovered
# automatically from content/<lang>/campaigns/; this block only carries the
# card's introductory copy.
# ---------------------------------------------------------------------------
[fund]
  title = "Fund a feature"
  tag   = "threshold campaign"
  lede  = "One identified feature, one target amount, one start threshold. Below the threshold, development does not start and nothing is charged. Above it, the code gets written and released under an open source license."
  bullets = [
    "Technical scope written up front, not an intention",
    "Start threshold shown, not implied",
    "The result is open source, including for those who did not fund it",
  ]

# ---------------------------------------------------------------------------
# Card B — pro support subscription. Pricing is deliberately indicative.
# ---------------------------------------------------------------------------
[subscription]
  title = "Pro support, by subscription"
  tag   = "recurring"
  lede  = "Recurring support on the tools I write: pg_auto_failover, pgcopydb, pgloader. Setup, bug fixes, evolutions."
  currency = "EUR"
  period   = "month"
  price_note = "Indicative pricing, confirmed in the contract."

  [[subscription.tiers]]
    id     = "daily"
    name   = "Day-to-day"
    price  = 500
    lede   = "Running it, day to day."
    bullets = [
      "Usage and configuration questions",
      "Fixes for the bugs you report, prioritized",
      "Answer within two business days",
    ]

  [[subscription.tiers]]
    id     = "escalation"
    name   = "Escalation"
    price  = 1500
    lede   = "When production goes sideways."
    bullets = [
      "Everything in day-to-day",
      "Incident escalation, four business hours response",
      "Written post-incident analysis",
    ]

  [[subscription.tiers]]
    id     = "strategic"
    name   = "Strategic"
    price  = 4000
    lede   = "When your roadmap depends on the tool."
    bullets = [
      "Everything in escalation",
      "Specific evolutions prioritized in the upstream roadmap",
      "Quarterly architecture review",
    ]
+++

Two ways to fund open source work, kept separate on purpose: one funds **a
feature**, the other funds **availability**.
