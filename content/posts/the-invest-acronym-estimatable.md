+++
title = "The INVEST Acronym : Estimatable"
date = 2025-04-24
+++
User stories are reminders of features, not full specifications. Avoid recording every detail up front because details change. We'll capture the details later, when they matter.

When a story reads like a contract, it stops being a conversation.
When it reads like a reminder, it invites one.

Follow the acronym "INVEST" as a quick check.

* I.NDEPENDENT
* N.EGOTIABLE
* V.ALUABLE
* __E.STIMATABLE__
* S.MALL
* T.ESTABLE

__ESTIMATABLE__

Stories must be concrete enough to estimate. Vague demands like *"The system must be fast"* are not estimable, they lack scope, measurable criteria, and acceptance tests.

Some examples of strategies to make these more concrete are:
* naming the scope (e.g., search API),
* adding measurable targets (e.g., 95th-percentile response < 300ms under X load),
* listing verification steps (load test scenario, observed metrics),

This turns a fuzzy non-functional requirement into a vertical, testable, and estimable story that builders can plan and stakeholders can prioritize.

__Discussions for your team__
* Do we have some backlog items that read like background requirements, not stories?
* Do we have vague stories that ask for "fast"? Can we specify fast using tests (load, profiling, etc)?
