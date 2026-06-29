+++
title = "Needing to Refactor the Code to Write Tests"
date = 2025-06-17
tags = ["Tests"]
+++
It happens very frequently where the team is doing "test-after" development.  And they're trying to keep the test coverage high.  There often comes a point where they're blocked from writing some tests unless they refactor the code first.

This is where the thinking gets confusing.  On one hand they already wrote the code, and manually test it. So they know it works. But now to write the test, they need to re-arrange the code just so they can write an automated test case for it.

The deadlines are looming above them, and there's still more tickets to work on. And they already know this bit of code works. So what happens? More often than not, they decide to just push the code as is, without proper test coverage.

They decide to "let someone else work on it", and let them do the refactor, or hope someone else can figure out how to write a test without needing the code to be refactored.

When the team decides to develop test first, they rarely get untestable code, because they design for testability up front - they decouple, add simple abstractions, and keep behaviors injectable. That makes the whole system easier to reason about and, importantly, gives the team a test suite they can trust enough to make deployment decisions.

The key idea is that TDD isn't just for verification, it's a lightweight design technique that embeds software architecture into the team's everyday work.

__Discussions for your team__
* What are some recent examples of code areas that were hard to test and why?
* What's stopping us from writing test first?
