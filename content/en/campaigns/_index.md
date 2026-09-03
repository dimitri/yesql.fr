+++
title = "Oracle support for pgloader v4"
description = "pgloader still cannot migrate from Oracle, and that gap has been on the record since 2015. Funding the connector, with the evidence from pgloader's own GitHub issues and roadmap."
kicker = "Fund a feature"

# Rendered as a plain note block after the campaign grid — the policy behind
# the mechanism, kept out of the way of the actual campaign above it.
[policy]
  title = "One feature at a time"
  note  = "This is the only open campaign, on purpose. Running one at a time means it gets the attention a threshold commitment deserves, and it means the next feature funded here is whichever one has the clearest case when this one closes — not whichever was queued first. When Oracle support ships, this page moves to the next real gap, not a wishlist."
+++

pgloader migrates from MySQL, SQLite and MS SQL Server. Not Oracle — and that
gap has been on the record for a decade: [issue #244](https://github.com/dimitri/pgloader/issues/244),
opened in June 2015, asked for exactly this, citing "many enterprise systems
[that] still run on Oracle." People are still asking in
[issue #1625](https://github.com/dimitri/pgloader/issues/1625), opened in
November 2024 — the request did not go away, it just never got funded.

It has been on [pgloader's own roadmap](https://pgloader.io/roadmap/) for
years, stated plainly: some items "will only happen given some financial
contributions to the project." Oracle support is one of them, and the roadmap
already names the approach — a Common Lisp driver for the Oracle protocol,
the same pattern used for the existing MS SQL Server connector.
