+++
title   = "The Onsite"
type    = "onsite"
slug    = "onsite"
weight  = 20
nav     = "Onsite"
description = "Onsite PostgreSQL engagement, one or two days, built on your schema and your queries. €3,000 / €5,000, four sessions a year in total, across all clients."
kicker  = "Onsite · four a year, total"
summary = "A day at your office with the author of The Art of PostgreSQL: half a day of presentation, half a day on your own queries. One or two days, four times a year — not four times per client."

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
    price    = 3000
    workload = "PT7H"
    lede     = "Half a day of presentation, half a day of questions and real cases."
  [[pricing.formats]]
    id       = "two-days"
    name     = "Two days"
    price    = 5000
    workload = "PT14H"
    lede     = "The long format: more ground covered, and the time to work through your queries one by one."

[course]
  mode = "onsite"
+++

The onsite engagement takes the content of *The Art of PostgreSQL* and puts it
against your code. The point is not to cover a syllabus, it is that your team
leaves with their own queries rewritten.

Not to be confused with the [Live Masterclass](https://theartofpostgresql.com/masterclass/),
which is the remote, recurring format open to everyone. The onsite happens at
your office, once, on your code.
