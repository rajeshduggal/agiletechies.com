+++
title = "Acceptance Tests as Business Contracts"
date = 2025-05-20
tags = ["Acceptance Tests"]
+++
Different teams have different ideas about how much details need to be specified in the requirements.

Some teams keep them as vague wishes and others specify pixel-perfect prescriptions.

It's useful for the product team to describe the desired behavior with some clear examples. Builders then translate those examples into automatable scenarios written in domain language. And the team then iterates until the tests clearly capture the business intent (rather than technical details). 

Acceptance tests become a living contract: readable by the business, automatable by builders, and provide fast feedback for everyone.

__Discussions for your team__
* Who in the team should draft the first few example scenarios?
* Which readable syntax/language/format should we use to bridge the business and builders?
* Do our acceptance tests express business outcomes (not UI pixels)?
