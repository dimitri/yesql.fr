+++
title = "Funding Open Source Without an Employer in the Loop"
type  = "article"
slug  = "funding-open-source"
weight = 35
nav    = "Funding"
description = "How to fund an open source maintainer when there is no employer sponsoring the work: GitHub Sponsors, Open Collective, Tidelift, threshold campaigns, and grants like the Sovereign Tech Agency — with pgloader's own funding history as a case study."
kicker  = "Outside the employee setup"
summary = "Most of the advice on sustaining open source assumes someone's employer is willing to pay for it. This is about what to do when that is not on the table — as an individual, or as a company whose engineers use a tool nobody there maintains."
+++

There is a well-worn answer to "how do we make sure the open source we depend
on stays maintained": get your employer to allow staff paid time on it, or
have your company sponsor a foundation, or buy support from whichever editor
built the project. All of that is real, and it works — when there is an
employer, a foundation, or an editor in the loop.

Most of the software you actually depend on does not have any of those. A
huge amount of critical infrastructure is a single person's repository, kept
alive on evenings and weekends, with no company behind it and no budget line
anywhere that has their name on it. That is this page's actual subject: not
"convince your employer," but what an individual, or a company with no
internal path to sponsor an employee's time, can actually do.

## Why this is not a theoretical problem

In March 2024, a PostgreSQL developer named Andres Freund noticed something
that should not have been noticeable: SSH logins on a test machine were about
half a second slower than they should be. Chasing that half-second led him to
a backdoor, deliberately inserted into `xz-utils` — a compression library so
deep in the Linux stack that most people who depend on it have never heard of
it — by a contributor who had spent two years building trust with its single,
overworked maintainer before slipping in the payload. It is one of the most
sophisticated supply-chain attacks ever documented, and it worked precisely
because the project had one exhausted volunteer and no one watching his back.

Nobody planned for that maintainer to be a single point of failure for a
meaningful share of the internet's SSH traffic. It happened because that is
simply what an unfunded single-maintainer project looks like by default, and
most of them look exactly like that.

## What "contribute" actually means

There are only two things you can put into an open source project: time or
money. Paid employee time is the mechanism most write-ups reach for first,
and it is genuinely the best option when it exists — but it requires an
employer willing to allocate it, which is exactly the case this page is
about *not* having. Money does not require that. It requires you, or your
company's expense account, and nothing else.

## The channels that exist in 2026

None of these need an employer's blessing, a procurement process, or a
company at all on the giving side.

**Recurring, direct to the maintainer** — [GitHub Sponsors](https://github.com/sponsors)
is the lowest-friction option: pick a maintainer, pick a monthly amount, done,
billed through GitHub. [Open Collective](https://opencollective.com/) does
the same with a public, itemized budget, which matters for projects that
want to show exactly where the money goes rather than ask for blind trust.
[Polar.sh](https://polar.sh/) is the newer entrant in the same space, adding
subscriptions and one-off issue funding on top of GitHub-native sponsorship.

**Recurring, enterprise-shaped but not an employment relationship** —
[Tidelift](https://tidelift.com/) sells companies a subscription for
maintenance and security assurances on the open source they run, and funds
the maintainers of those packages directly from it. It is worth knowing
about specifically because it is designed for the buyer who *does* have a
procurement process and a vendor-approval workflow, but no path to put an
external maintainer on payroll — Tidelift is the vendor relationship that
substitutes for that.

**One-off, for one specific feature** — this is the oldest idea on the list
and the one I like best, because it names its price up front. In 2008,
[Poul-Henning Kamp](http://phk.freebsd.dk/) proposed
[the Varnish Moral License](http://phk.freebsd.dk/VML/): happy users send an
invoice's worth of money, he develops Varnish, nobody has to feel bad about
running great software written by someone who also has bills to pay. The
2026 version of that idea is a published, threshold-based campaign: a
written scope, a target amount, and a line stating plainly that below a
certain amount the work does not happen at all. It removes the guesswork on
both sides — funders know exactly what they are buying, and the maintainer
is not committing to unbounded work against an unbounded pledge.

**Grants, not jobs** — a newer and genuinely useful category: money that
funds a maintainer's time on critical infrastructure without requiring them
to become anyone's employee. The [Sovereign Tech Agency](https://www.sovereign.tech/)
(a German government-backed fund, formerly the Sovereign Tech Fund) runs
exactly this kind of program, paying maintainers of foundational open source
— as freelance contractors, on their own project, on their own terms — to
work on maintenance that would otherwise be nobody's job. [NLnet](https://nlnet.nl/)
has run a similar grant program for European digital infrastructure projects
for over two decades. Neither requires the maintainer to work for the funder.

**What to be careful with** — one-off tip jars (Buy Me a Coffee, Ko-fi) are
fine as a thank-you but rarely add up to anything that changes how much time
a maintainer can give a project; treat them as a gesture, not a funding
strategy. And check that a platform is actually solvent before routing money
through it: Bountysource, once one of the more visible bounty platforms for
open source, filed for bankruptcy in late 2023 and had already stopped
paying out bounties to developers with verified, completed claims months
before that.

## pgloader's own history with this

I wrote about this problem back in 2018, when pgloader was already
supporting companies migrating away from Oracle and other legacy databases,
one line in that old article reads: *"I don't know anyone who would hack
Oracle™ support into pgloader on their own free time."* At the time, the
best tools I had to offer were exactly the ones described above in their
2018 form — a one-off "Moral License" and a recurring "Patrons Membership,"
both run through Gumroad, both now retired.

Eight years later, that line has an answer: [Members](/en/members/) carries
the recurring side of it — tiered, priced, funding the maintenance of
pgloader, pgcopydb, pg_auto_failover and pgextwlist year-round — and the
current fund-a-feature campaign is, almost word for word, the thing I said
nobody would do for free: [Oracle support for pgloader v4](/en/campaigns/oracle-pgloader-v4/),
funded as a threshold campaign, exactly the mechanism this page is about.
It is not a hypothetical case study. It is what this site's own funding
pages are.

## What to actually do

If you are an individual using a tool you did not pay for: pick the
maintainer whose software you would genuinely miss, and put a small
recurring amount on GitHub Sponsors or Open Collective. It adds up more than
it feels like it should.

If you are inside a company that has no path to sponsor an employee's time
on external open source, but does have an expense account or a discretionary
budget: a Tidelift subscription, a grant application to a fund like the
Sovereign Tech Agency, or backing a specific published campaign for a
feature you actually need are all things that do not require convincing
anyone to change how the company hires or allocates engineering time. They
only require someone willing to spend money on software the company already
depends on.

Either way: time or money, but something. The alternative is not "the
project stays free forever." The alternative is one exhausted maintainer,
and you finding out the hard way what that actually costs.
