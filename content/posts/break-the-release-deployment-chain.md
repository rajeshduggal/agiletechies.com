+++
title = "Break the Release-Deployment Chain"
date = 2025-05-19
tags = ["Continuous Delivery"]
+++
The key to achieving Continuous Delivery is to focus on shortening every cycle. Continuous Delivery will follow as a natural byproduct.

First we start by breaking the coupling between release and deployment.

A release means the software is technically ready to be deployed; and the actual decision to deploy should be a business decision, not an engineering bottleneck.

Shrink your release cadence stepwise - three months → monthly → weekly - aiming asymptotically toward zero. 

Make iterations deployable so the business can choose timing independently. Use pipelines, feature toggles, and trunk-friendly practices so deployments become routine and low risk. When release and deployment are uncoupled, the team learns faster and the business controls timing without engineering friction.

__Discussions for your team__
* What steps are binding the releases to deployments?
* Which pipeline gaps need to be closed?
* How will we handle rollbacks and toggles?
