+++
title = "Don't Break the Build"
date = 2025-06-04
tags = ["Continuous Integration"]
+++
Many teams accept it as normal, and "usual", for the build to break now and again.  Instead, foster a team culture where it's considered an "unusual" thing.

Before checking in code, the builder needs to run the unit tests and acceptance tests. If the build breaks, something *unusual* has happened, and we switch focus to fix it immediately.

A simple visual trick that can help accelerate the discipline of keeping the build in good health: Create a visual calendar year grid diagram for the build, and mark a green dot for each day with no build failures and a red dot for each day with at least one build failure.

If the team is seeing and paying attention to the calendar regularly there will likely be shift from scattered dots to mostly green within weeks!

__Discussions for your team__
* How do we decide which tests we need to run before we check-in?
* Is our test feedback fast enough, or do we need to make them run faster?
* Who needs to be informed if the build breaks? Should the notification be automated, or manual?
* What immediate steps will we take if the build breaks?
