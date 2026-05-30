+++
title = "Builders Run the Tests"
date = 2025-05-27
tags = ["Quality Assurance"]
+++
The acceptance tests are written by the business, and run by the builders.

The business defines what success looks like, but it's not their job to verify that the system delivers it; that responsibility belongs to the people who built it.

Builders run acceptance tests, fix failures, and ensure the application delivers what has been asked for; before a story is considered done. Running those tests continuously is the only reliable way the team knows the story is complete.

__Discussions for your team__
* Are there specially assigned people (often called QA) that run the tests? Or do the people doing the building run them?
* Can the builders quickly and easily run the suite of tests, and also individual tests?
* How fast do builders get test results from CI and act on them?
