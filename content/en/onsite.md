+++
title   = "The Onsite"
type    = "onsite"
slug    = "onsite"
weight  = 20
nav     = "Onsite"
description = "A full-day, personally-delivered, fully-customized technical session, built on your schema and your queries. €4,500 / €8,000, four sessions a year in total, across all clients."
kicker  = "Onsite · a few sessions a year"
summary = "A complete technical session, prepared for you and delivered in person: half a day of presentation, half a day on your own queries. One or two days, kept deliberately rare."

# Scarcity as a quality signal, not a rationing notice: it is a small number
# because the trade-off it protects is stated plainly, not implied.
[scarcity]
  max_per_year = 4
  label = "onsite sessions a year"
  note  = "Kept deliberately small. Working directly with production teams is what keeps the material honest — it is also what feeds the book, the training, and the open source tools. Splitting the year between all of that, rather than being booked solid on one of them, is what keeps each part real."

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
  name  = "Get in touch"
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

[contact]
  label   = "Book a slot"
  note    = "Tell me roughly when, and whether one day or two — we work out the rest from there. No form in between."
  email   = "dim@tapoueh.org"
  subject = "Onsite session"
+++

The onsite is a complete technical session: prepared specifically for you, and
delivered in person, not a generic deck recited. It takes the content of
*The Art of PostgreSQL* and puts it against your code. The point is not to
cover a syllabus, it is that your team leaves with their own queries
rewritten.

Not to be confused with the [Live Masterclass](https://theartofpostgresql.com/masterclass/),
which is the remote, recurring format open to everyone. The onsite happens at
your office, once, on your code.
