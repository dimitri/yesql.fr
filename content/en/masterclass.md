+++
title   = "The masterclass"
type    = "masterclass"
slug    = "masterclass"
weight  = 20
nav     = "Masterclass"
description = "Advanced PostgreSQL training onsite, one or two days, built on your schema and your queries. €3,000 / €5,000, four sessions a year."
kicker  = "The Art of PostgreSQL · onsite"
summary = "Advanced PostgreSQL training, onsite, over one or two days, built on your schema and your queries. Four sessions a year, no more."

[cta]
  label = "Book a slot"
  href  = "#form-masterclass"
  note  = "Limited availability — four sessions a year."

# Scarcity is a calendar fact, not a sales argument. It is displayed.
[scarcity]
  max_per_year = 4
  label = "sessions per year, maximum"
  note  = "The rest of the year goes to support and open source development. Slots are usually booked one to two quarters ahead."

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
  note     = "Excluding travel and accommodation, billed at cost."

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

The masterclass takes the content of *The Art of PostgreSQL* and puts it against
your code. The point is not to cover a syllabus, it is that your team leaves
with their own queries rewritten.
