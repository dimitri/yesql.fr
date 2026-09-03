+++
title   = "The Onsite"
type    = "onsite"
slug    = "onsite"
weight  = 20
nav     = "Onsite"
description = "A full-day, personally-delivered, fully-customized technical session, built on your schema and your queries. €4,500 / €8,000, four sessions a year in total, across all clients."
kicker  = "Onsite · four a year, total"
summary = "A complete technical session, prepared for you and delivered in person: half a day of presentation, half a day on your own queries. One or two days, four times a year — not four times per client."

[cta]
  label = "Book a slot"
  href  = "#form-onsite"
  note  = "Limited availability: four sessions a year in total, across all clients."

# Scarcity is a calendar fact, not a sales argument, and it applies to the
# WHOLE calendar, not to any one client: the label and the note both say so
# explicitly, so there is nothing left to read ambiguously.
[scarcity]
  max_per_year = 4
  label = "sessions a year, total — across all clients"
  note  = "This is not four sessions per client: it is four sessions for the year, across every company combined. The rest of the year goes to support and open source development. Slots are usually booked one to two quarters ahead."

# How a day runs.
[[agenda]]
  id    = "morning"
  name  = "Morning — presentation"
  lede  = "Half a day of structured material, drawn from the book and reworked for your context."
[[agenda]]
  id    = "afternoon"
  name  = "Afternoon — Q&A and real cases"
  lede  = "Half a day on your queries, your schema, your query plans. No generic examples."

[materials]
  title = "Materials sent in advance"
  note  = "The book and the course material are sent to attendees before the session, so that the day is spent on questions rather than on discovery."

# How a session comes together, in four steps. Deliberately simple: this is
# not a statement of work, it is enough to know what to expect and when.
[[workflow]]
  id    = "book"
  step  = "1"
  name  = "Book a date"
  lede  = "As early as possible, and at least six weeks before the session — the time it takes to prepare content that speaks to your code, not a generic example."
[[workflow]]
  id    = "materials"
  step  = "2"
  name  = "Send your material"
  lede  = "Two weeks before: schema (DDL), a handful of slow queries with their EXPLAIN output, and the business context — data volumes, constraints, what has already been tried."
[[workflow]]
  id    = "logistics"
  step  = "3"
  name  = "Confirm logistics"
  lede  = "One week before: location, room, projector, VPN access if needed, and the list of attendees."
[[workflow]]
  id    = "day"
  step  = "4"
  name  = "The day itself"
  lede  = "Presentation in the morning, your queries in the afternoon — see the agenda above."

# Travel changes which format is possible, not just the comfort level. Two
# scenarios, described the way they actually run.
[[travel]]
  id      = "short"
  title   = "Short travel"
  example = "France, nearby Europe"
  steps = [
    "Tuesday morning — travel out",
    "Tuesday afternoon — first session",
    "Wednesday morning — second session",
    "Wednesday afternoon — travel back",
  ]
  note = "The one-day format (two half-days) fits into two calendar days, round trip included."
[[travel]]
  id      = "long"
  title   = "Long travel"
  example = "outside Europe"
  steps = [
    "Day 1 — travel out",
    "Day 2 — rest (jet lag)",
    "Days 3 and 4 — the two onsite days",
    "Day 5 — travel back",
  ]
  note = "A full week. For these destinations only the two-day format makes sense — the one-day format is not offered. The rest day is billed at the day rate, on top of the two-day package: three billed days in total, plus travel and accommodation at cost."

# Prices shown: unlike the enterprise contract, this one is a firm price.
[pricing]
  currency = "EUR"
  # Repeated under EACH price (not only as a footnote at the bottom): the kind
  # of detail that gets discovered too late if it only appears once, at the
  # very end. A surprise expenses invoice is the fastest way to undo the trust
  # a public price is supposed to build.
  note     = "Excluding travel and accommodation, billed separately at cost, on top of the price above."

  [[pricing.formats]]
    id       = "one-day"
    name     = "One day"
    price    = 4500
    workload = "PT7H"
    lede     = "Half a day of presentation, half a day of questions and real cases."
  [[pricing.formats]]
    id       = "two-days"
    name     = "Two days"
    price    = 8000
    workload = "PT14H"
    lede     = "Preparation is the same regardless of format and is shared across both days: more ground covered, and the time to work through your queries one by one."

[course]
  mode = "onsite"
+++

The onsite is a complete technical session: prepared specifically for you, and
delivered in person, not a generic deck recited. It takes the content of
*The Art of PostgreSQL* and puts it against your code. The point is not to
cover a syllabus, it is that your team leaves with their own queries
rewritten.

Not to be confused with the [Live Masterclass](https://theartofpostgresql.com/masterclass/),
which is the remote, recurring format open to everyone. The onsite happens at
your office, once, on your code.
