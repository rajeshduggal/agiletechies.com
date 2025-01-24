+++
title = "The Elephant in the Room: Agile Workflow Incompatibility"
date = 2025-01-23
+++

It's important to not assume that the software your team is working is compatible with an agile workflow.

Agile is about _embracing change_.

And for that to happen, the software itself needs to be intentionally designed with adaptability in mind.

I've joined many teams where the management and scrum master were on-board with following an agile approach, but they were   completely oblivious to the fact that the software being built wasn't compatible with an agile workflow. 

Even worse, no one on the team was actively working to address this issue! The result? Agile became a struggle, with the team constantly battling a software system that resisted change instead of supporting it.

----

Questions to ask the team:
* How easy/hard is it to write a unit test?
* How long does it take to run a single unit test?
* How long does it take to run the entire suite of automated tests?
* What areas of the codebase are hardest to modify? Why?
* How often do we encounter unexpected side effects when making changes?
* Do we have any parts of the system that feel "untouchable"? If so, why?
* How tightly coupled are different components of the software?
* Do external dependencies (libraries, APIs, etc.) make changes harder?
* How often do we experience blockers or delays due to software design issues?
* What technical debt in the system is most disruptive to Agile workflows?
* How easy is it to seed the database with different test data scenarios when running each test?
