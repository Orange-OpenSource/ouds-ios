- [Overview](#overview)
- [Current Maintainers](#current-maintainers)
- [Maintainer Responsibilities](#maintainer-responsibilities)
  - [Uphold Code of Conduct](#uphold-code-of-conduct)
  - [Prioritize Security](#prioritize-security)
  - [Review Pull Requests](#review-pull-requests)
  - [Triage Open Issues](#triage-open-issues)
    - [Automatically Label Issues](#automatically-label-issues)
  - [Be Responsive](#be-responsive)
  - [Maintain Overall Health of the Repo](#maintain-overall-health-of-the-repo)
    - [Keep Dependencies up to Date](#keep-dependencies-up-to-date)
  - [Manage Roadmap](#manage-roadmap)
  - [Add Continuous Integration Checks](#add-continuous-integration-checks)
  - [Use Semver](#use-semver)
  - [Release Frequently](#release-frequently)
  - [Promote Other Maintainers](#promote-other-maintainers)
  - [Describe the Repo](#describe-the-repo)
- [Becoming a Maintainer](#becoming-a-maintainer)
  - [Nomination](#nomination)
  - [Interest](#interest)
  - [Addition](#addition)
- [Removing a Maintainer](#removing-a-maintainer)
  - [Moving On](#moving-on)
  - [Inactivity](#inactivity)
  - [Negative Impact on the Project](#negative-impact-on-the-project)

## Overview

This document explains who maintainers are, what they do in this repository, and how they should be doing it. If you're interested in contributing, see [CONTRIBUTING](CONTRIBUTING.md).

## Current Maintainers

See the [MAINTAINERS.md](MAINTAINERS.md) file that lists current maintainers.

## Maintainer Responsibilities

Maintainers are active and visible members of the community, and have high-level permissions on the repository. Use those privileges to serve the community and evolve code as follows.

### Uphold Code of Conduct

Model the behavior set forward by the [Code of Conduct](CODE_OF_CONDUCT.md) and apply the [Code of Conflict](CODE_OF_CONFLCIT.md).

### Review Pull Requests

It's our responsibility to ensure the content and code in pull requests are correct and of high quality before they are merged. Here are some best practices:

- Leverage the issue triaging process to review pull requests and assign them to maintainers for review (use [CODEOWNERS](CODEOWNERS) if needed).
- In cases of uncertainty on how to proceed, search for related issues and reference the pull request to find additional collaborators.
- When providing feedback on pull requests, make sure your feedback is actionable to guide the pull request towards a conclusion.
- If a pull request is valuable but isn't gaining traction, consider reaching out to fulfill the necessary requirements. This way, the pull request can be merged, even if the work is done by several individuals.
- Lastly, strive for progress, not perfection.

### Triage Open Issues

Manage labels, review issues regularly, and triage by labelling them.

Use labels to target an issue or a pull request for a given release, add `Good first issue` to good issues for new community members, and `Help wanted` for issues that scare you or need immediate attention. Request for more information from a submitter if an issue is not clear. Create new labels as needed by the project.

#### Automatically Label Issues

There are many tools available in GitHub for controlling labels on issues and pull requests.  Use standard issue templates in the [./.github/ISSUE_TEMPLATE](./.github/ISSUE_TEMPLATE) directory to apply appropriate labels such as `bug` and `triage`.

### Be Responsive

Respond to enhancement requests, and discussions. Allocate time to reviewing and commenting on issues and conversations as they come in.

### Maintain Overall Health of the Repo

Keep the `main` branch at production quality at all times. Backport features as needed. Cut release branches and tags to enable future patches.

#### Keep Dependencies up to Date

Maintaining up-to-date dependencies on third party projects reduces the risk of security vulnerabilities. The Open Source Security Foundation (OpenSSF) [recommends](https://github.com/ossf/scorecard/blob/main/docs/checks.md#dependency-update-tool) either [dependabot](https://docs.github.com/en/code-security/dependabot) or [renovatebot](https://docs.renovatebot.com/). Both of these applications generate Pull Requests for dependency version updates. We use Renovate here.Renovate is integrated as part of the Remediate app in [Mend for Github](https://github.com/apps/mend-for-github-com), which is enabled on this repository.

### Use Semver

Use and enforce [semantic versioning](https://semver.org/) and do not let breaking changes be made outside of major releases.

### Release Frequently

Make frequent project releases to the community.

### Promote Other Maintainers

Assist, add, and remove [MAINTAINERS](MAINTAINERS.md). Exercise good judgement, and propose high quality contributors to become co-maintainers. See [Becoming a Maintainer](#becoming-a-maintainer) for more information.

### Describe the Repo

Make sure the repo has a well-written, accurate, and complete description.

### Becoming or not a Maintainer

The repository admins, seens as top maintainer, are the only ones able to choose wether or not somebody can be named as maintainer, in the way they want.

