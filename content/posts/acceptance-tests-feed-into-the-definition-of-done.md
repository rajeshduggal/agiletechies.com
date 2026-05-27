+++
title = "Acceptance Tests Feed Into the Definition Of Done"
date = 2025-05-22
tags = ["Acceptance Tests","Definition Of Done"]
+++

Each user story should have at least one acceptance test. The tests are drafted by the business (with support from the BAs and QA) they describe the behavior they expect to see in the application when the story is complete. When it's practical the builders aim to automate the execution of these tests.

As the builders and the business' understanding of the requirements converge and they come to an agreement on what's to be delivered by the story, they start to build and automate the acceptance tests to prove that it's the ask has been fulfilled.

The tests are integrated into the continuous build system.

The acceptance tests feed into the "Definition of Done" for each story. The story is implemented after the acceptance tests are understood, and the story is only considered complete when all of it's acceptance tests pass.

This simple discipline turns conversations into delivered functionality.

__Discussions for your team__
* Which business people will author acceptance tests for the next batch of upcoming stories?
* Can we commit to clarifying the acceptance tests before the implementation work is started?
* How will we integrate acceptance tests into CI pipelines?
* Do we have any blockers that prevent the acceptance tests from becoming executable tests?
