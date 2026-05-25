+++
title = "Who Writes the Tests?"
date = 2025-05-21
tags = ["Acceptance Tests"]
+++
A specification can be described as a test.

For example: when a user enters a valid username and password and clicks "login," the system shows the "Welcome" page. That sentence is a requirement and can also act as a test.

Acceptance tests should be automated whenever practical. The business team owns the requirements; and the builders make them runnable.

The confusion comes when only one side works on the tests. In practice the team needs to write them together.

The business states the behavior and intent, and the builders collaborate to express that intent in an executable, readable, and runnable form.

The test suite becomes a living documentation of business value.

__Discussions for your team__
* Who on our team should work on stating the behavior in plain business terms?
* How can we turn that behavior into a suite of executable tests?
* What tools can we use to let the business easily validate the tests results?
* How do we ensure the acceptance tests reflect business value (instead of technical detail)?
