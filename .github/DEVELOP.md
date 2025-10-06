# Developer guide

- [Technical preconditions](#technical-preconditions)
- [Build OUDS Package](#build-ouds-package)
- [Documentation](#documentation)
  * [Generation](#generation)
  * [Illustrations](#illustrations)
- [Run tests](#run-tests)
  * [Unit tests for OUDS Swift package](#unit-tests-for-ouds-swift-package)
- [Developer Certificate of Origin](#developer-certificate-of-origin)
- [Commits, changelog, release note, versioning](#commits-changelog-release-note-versioning)
  * [About commits](#about-commits)
  * [About release note and changelog](#about-release-note-and-changelog)
  * [Integration of tokenator updates](#integration-of-tokenator-updates)
  * [Verifying commits cryptographic signatures](#verifying-commits-cryptographic-signatures)
- [Use of Gitleaks](#use-of-gitleaks)
- [Linter](#linter)
- [Formater](#formater)
- [Dead code](#dead-code)
- [Software Bill of Materials](#software-bill-of-materials)
- [Update of dependencies](#update-of-dependencies)
- [CI/CD](#cicd)

## Technical preconditions

> [!IMPORTANT]
> You should check wether or not you have the tools in use in the project like Fastlane, SwiftLint, SwiftFormat, etc.
> You can have a look for example in the THIRD_PARTY.md file which lists any dependencies and tools we use at different levels (SDK, design system toolbox app, project).
> Have a look on the locks file to know which versions we are using (Podfile, Podfile.lock, Gemfile, Gemfile.lock, etc.).

> [!IMPORTANT]
> We use a lot Fastlane for its automatic features and also to wrap to Shell command lines in order to have the same command to trigger
> for both the design ssytem toolbox app and the OUDS Swift package.

If some tools are missing, pick the suitable command line below and check versions:
```bash
# Get updated RubyGems
gem update --system 3.6.7

# Install bundler (at least 2.6.7)
gem install bundler

# Install rbenv (at least 1.3.2)
brew install rbenv

# Use Bundler to install a major part of dependencies (thanks to Gemfile and Gemfile.lock files)
bundle install

# Update your references
brew update

# Fastlane (at elast 2.228.0)
brew install fastlane

# For Periphery (https://github.com/peripheryapp/periphery) for dead code hunt (at least 3.1.0)
# If you used Periphery V2 before, follow their migration guide: https://github.com/peripheryapp/periphery/wiki/3.0-Migration-Guide
brew install periphery

# For gitleaks (https://github.com/gitleaks/gitleaks) for secrets leaks hunt (at least 8.24.3)
brew install gitleaks
# or `brew reinstall gitleaks` to get updates if old version installed

# For SwiftLint (at least 0.59.1)
brew install swiftlint
# or `brew reinstall swiftlint` to get updates if old version installed

# For SwiftFormat (at least 0.56.2)
brew install swiftformat
# or `brew reinstall swiftformat` to get updates if old version installed

# For xcodes (at least 1.5.0)
brew install xcodesorg/made/xcodes
# or `brew reinstall xcodesorg/made/xcodes` to get updates if old version installed

# For git-cliff (at least 2.8.0)
brew install git-cliff

# For Syft (at least 1.26.1)
brew install syft

# For Grype (at least 0.96.0)
brew tap anchore/grype
brew install grype
```

Ensure you have the suitable _Ruby_ version. We recommend the use of [rbenv](https://github.com/rbenv/rbenv) to load the suitable version of ruby.

> [!TIP]
> We use here Ruby 3 (>= 3.4).

If you are not used to this tool:

```shell
# List available local versions of Ruby
rbenv install --list

# Apply the expected x.y.z version of Ruby (if listed previously with the command above)
rbenv global 3.4.0

# If you don't have the expected x.y.z version of Ruby, run:
# >  brew update && brew upgrade ruby-build
# >  rbenv install x.y.z
# then 
# >  rbenv global x.y.z

# Check Ruby version
ruby --version
```

We use also for our GitLab CI runners **Xcode 26.0.1**, we suggest you use this version or newer if you want (but not recommended).

> [!IMPORTANT]
> Xcode 26.0.1 and Swift 6.2 are used for this project. You must use this configuration.
> No retrocompatibility is planned.
> If needed, contact us and open a discussino on GitHub Orange-OpenSource/ouds-ios

## Build OUDS Package

To build the OUDS package:
1. Open the folder containing the *Package.swift. file in Xcode
2. Select the "OUDS-Package" scheme
3. Build

> [!TIP]
> You can also move the folder from the *Finder* to the [Design System Toolbox project](https://github.com/Orange-OpenSource/ouds-ios-design-system-toolbox) so as to have a local reference of the package in the demo project.

> [!TIP]
> For consistancy reasons, when you work on a dedicated branch on the Swift Package repository and need to have a dedicated branch in the design system toolbox app, you should create a branch from the issue in GitHub and (creating then a branch in the package repository) and create a branch with the same name in the design system toolbox app repositoy. Thus with two repositories we will be able to find easily the suitable branches because the names are the same. Because issues are disabled in the design system toolbox repository, there is no wories to have to refer to issues numbers in the branch names.

## Documentation

### Generation

The documentation is based on the Swift documentation with [DocC](https://www.swift.org/documentation/docc/).
Documentation catalogs / archives can be generated through Xcode with _Product > Build Documentation_.

The `generateWebDocumentation.sh` script helps to build the HTML version of documentation and compress it in ZIP file, and also can update
the online version based on [_GitHub Pages_](https://pages.github.com/), this version is hosted in the [*gh-pages* GitHub branch](https://github.com/Orange-OpenSource/ouds-ios/tree/gh-pages).

### Illustrations

The illustrations in use for the documentation is versioned in the Swift Package library.
However it is the [design system toolbox project](https://github.com/Orange-OpenSource/ouds-ios-design-system-toolbox) which updates it using UI tests.

To update the illustrations, you have to:
- select the device from Xcode (i.e. *iPhone 12 Pro*) (see details in `AppTestCase+Dimensions.swift` file)
- keep the device in portrait mode
- check the color scheme in use you need (light or dark mode)
- run the debug app: this is the app wich will be compiled and used for tests and screenshots
- select the theme you want from the app; your choice will be kept in user defaults
- then run the UI tests (*DesignToolboxUITests* scheme), all *DocumentationScreenshots* test cases

Xcode will then run the tests and put the illustrations, here cropped screenshots of the app in selected device, in attachments of tests.

Then copy/paste these files in the location you want for the Swift Package library. having a local reference of it in your Xcode is more comfortable.

Repeat this process for the other themes if needed.

For *App Store* illustrations, same thing, but with the suitable simulators or devices:
- iPad Pro 2nd generation / 12.9-inch
- iPad Pro 3rd generation (2018) / 12.9-inch
- iPhone 5.5-inch devices (iPhone 6/7/8 Plus) 1242 x 2208
- iPhone 6.5-inch (iPhone XS Max) 1242 x 2688

## Run tests 

### Unit tests for OUDS Swift package

The unit tests are here to ensure there are no regressions in core features, tokens management, etc.
You should run the tests using an iPhone simulator (like *iPhone 16 Pro (18.0)*).
Because OUDS is designed first for iOS, some of the OUDS API rely on UIKit (color colors and a11y features), and some tests are condioned to the platform.
SO running tests on macOS or CI/CD today won't run all the tests (see [#667](https://github.com/Orange-OpenSource/ouds-ios/issues/667)).

To run these unit tests follow some steps:
1. Select the "OUDS-Package" scheme
2. In the test pane run the autocreated plan or any test scheme you want

Unit tests care have been implemented for several reasons. 

First, we don't have too much control on the raw tokens values. We rely on the _Figma_ design tool which outputs the tokens in a JSON file. 
And this file will be parsed to as to generate Swift files. But if there are inconsistencies in the _Figma_ side or in the parser side, the inconsistencies will be spread in our code base. 
It is not useful to define unit tests for raw tokens to test their values ; in fact they exist here to be updated.
But we wan still check other things like the relationship between them. For example a _grid100_ should always be less or equal than a _grid100_. Some _color100_ should be always lighter than a _color200_, etc, etc. A small typo should be always smaller or with the sale size has a one-step-bigger typo.

Then, we want to know when tokens have been removed so as to warn our users and keep release notes and changelog clean. If we don't spot such changes, maybe some users will be impacted.

Finally, we ensure our themes can override any semantic tokens. Themes are in fact a set of values for the whole universe of semantic tokens, and if a theme cannot override a semantic token, there could be an issue. Unit tests also help us to find if some tokens have been removed before releasing the library.

Beware, UI tests and snapshots tests (i.e. visual regression) are designed in the [Design System Toolbox project](https://github.com/Orange-OpenSource/ouds-ios-design-system-toolbox): we need an app to build, generated views and tigger some user inputs.

## Developer Certificate of Origin

A [GitHub Action bot](https://probot.github.io/apps/dco/) has been plugged in the repository so as to check wether or not the DCO is applied for commits.

## Commits, changelog, release note, versioning

### About commits

#### Convention commits rules

Try as best as possible to apply [conventional commits rules](https://www.conventionalcommits.org/en/v1.0.0/).
Keep in mind to have your commits well prefixed, and with the issue number between parenthesis at the end, and also if needed the pull request issue number.
If your commits embed contributions for other people, do not forget to [add them as co-authors](https://docs.github.com/fr/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/creating-a-commit-with-multiple-authors).
All of you should also comply to DCO.

Your commit message should be prefixed by keywords [you can find in the specification](https://www.conventionalcommits.org/en/v1.0.0/#specification):
- `fix:`
- `feat:`
- `build:`
- `chore:`
- `ci:`
- `docs:`
- `style:`
- `refactor:`
- `perf:`
- `test:`

You can add also ! after the keyword to say a breaking change occurs, and also add a scope between parenthesis like:
- `feat!:` breaking change because..
- `feat:` add something in the API...

A *Git commit-msg hook* is also defined in the project. It will run *Shell* codes to check if rules defined in the hook are respected before commit being pushed.
The hook is degined in **.git-hook/commit-msg**.

To apply it, run in your project (e.g. once cloned):

```shell
git config --local --add core.hooksPath .git-hooks
```

#### Chain of responsability

We can add metafields picked from [this good guideline](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n525) in the commit messages.
This is not mandatory (yet) but a good practice and quite interesting to know who reviewed and validated what.
You must mention *co-authors* (*Co-authored-by*). You should add who are code reviewers (*Reviewed-by*), evolutions testers (*Tested-by*) and if needed ackers (*Acked-by*).

For example, for issue n°123 and its pull request n°456, tested by Anton, Maxime, Jérôme, Pierre-Yves and Benoit, reviewed by Ludovic, authored by Tayeb and Pierre-Yves, and acked by Stephen:
```text
refactor: update some things colors and design of the demo app (#123) (#456)

Some things have been refactored to make incredible things.

Tested-by: Anton Astafev <anton.astafev@orange.com>
Tested-by: Benoit Suzanne <benoit.suzanne@orange.com>
Tested-by: Maxime Tonnerre <maxime.tonnerre@orange.com>
Tested-by: Jérôme Régnier <jerome.regnier@orange.com>
Tested-by: Pierre-Yves Ayoul <pierre-yves.ayoul@orange.com>
Reviewed-by: Ludovic Pinel <ludovic.pinel@orange.com>
Acked-by: Stephen McCarthy <stephen.mccarthy@orange.com>
Co-authored-by: Tayeb Sedraia <tayeb.sedraia@orange.com>
Co-authored-by: Pierre-Yves Lapersonne <pierreyves.lapersonne@orange.com>
Signed-off-by: Tayeb Sedraia <tayeb.sedraia@orange.com>
Signed-off-by: Pierre-Yves Lapersonne <pierreyves.lapersonne@orange.com>
```

> [!TIP]
> Keep things clear and sorted. If people worked on your commits, mention them if relevant.

#### Integration of tokenator updates

You should refer to the [dedicated page in the wiki for more details](https://github.com/Orange-OpenSource/ouds-ios/wiki/20-%E2%80%90-How-to-update-tokens).

Keep in mind the commit adding *tokenator* updates in the codebase must be formatted like

```text
chore(🤖): update `OpacityRawTokens` (tokenator generation 20241021134644) (#225)
``` 

i.e. precise the tokens updated, the *tokenator* generation timestamp and the pull request number.

If you know what is the token library version, add it in the commit body, like:
```text
chore(🤖): update `OpacityRawTokens` (tokenator generation 20241021134644) (#225)

Tokens library v0.4.1
``` 

#### Verifying commits cryptographic signatures

Some core maintainers in the project use GPG so cryptographically sign their commits.
You can check the commits status with the commands below:
```shell
# Of course we suppose you are a bit used to GPG and have it installed
# Update your keychain of GPG keys and getthe online the ones for the maintainers
# For example GPG key identifier of @pylapp is "8030BBE06B4F48F95BD082DA7D5AE4DCFF3A3435"

# This command can take a lot of time, maybe try the next one
gpg --refresh-keys
gpg --keyserver https://key.openpgp.org --recv-keys 8030BBE06B4F48F95BD082DA7D5AE4DCFF3A3435

# If none of this command works, contact the maintainers to get their public key to add in your keychain and run
gpg --import path/to/asc/key/file

# Then check if the key is in your keychain
gpg --list-keys --keyid-format=short

# If you run "gpg --check-sigs" you may notice they keys are not signed (unknown trust), that's not unexpected

# Then run the command to verify the commit status using for example its hash
git verify-commit the-commit-hash
# Or get more logs
git log --show-signature
```

In addition, GitHub also provides a feature of commits veritification named [Vigilant mode](https://docs.github.com/en/authentication/managing-commit-signature-verification/displaying-verification-statuses-for-all-of-your-commits).
In few words, if the commit was signed with the committer's verified signature, the commit is *verified*.

> [!CAUTION]
> Some maintainers do not use GPG or SSH signing for commits, so the documentation commits can be seen as "unverified"
> and some commits can have empty status because GitHub Vigilant Mode is not enabled for everyone
> and some commits can be unsigned.

### About release note and changelog

We try also to apply [keep a changelog](https://keepachangelog.com/en/1.0.0/), and [semantic versioning](https://semver.org/spec/v2.0.0.html) both with [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).

We can generate a `RELEASE_NOTE.md` file using the Git history and [git cliff](https://git-cliff.org/) tool.
Today we update the unique CHANGELOG manualy, but you can find [in the wiki more details about the use of git-cliff](https://github.com/Orange-OpenSource/ouds-ios/wiki/52-%E2%80%90-About-changelog,-release-notes-and-hooks)

To generate a release note:
```shell
git-cliff --config .github/cliff.toml --output RELEASE_NOTE.md X..Y
```

> [!Tip]
> X can be a commit hash or the last tag for example. Y should be HEAD. Run this comman on main branch.

## Use of Gitleaks

[Gitleaks](https://gitleaks.io/) can be used to check if secrets can be leaked or not.
A [GitHub Action](https://github.com/gitleaks/gitleaks-action) has been integrated to the repository with a configuration file defined in _/github/workflows_ named _gitleaks-action.yaml_.
It will launch the _Gitleaks_ tool automatically.

However this tool does not detect plain API key mixed in URL, that is a reason why _Gitleaks_ can be called in a pre-commit hook, using the _giteaks.toml_ at the root of the project.
To call _Gitleaks_ in pre-commit hooks, create a file named **pre-commit** inside _.git/hooks_ (then run `chmod u+x` in the file).
Then place the bash code below in this file:

```bash
# Run Gitleaks before commits
echo "Running pre-commit hook: Use of gitleaks"
gitleaks detect -v -l debug --source .

# If the command fails, prevent the commit
if [ $? -ne 0 ]; then
  echo "Pre-commit hook failed. Aborting commit."
  exit 1
fi
```

Or just run when you want the command:

```shell
bundle exec fastlane check_leaks
```

> [!CAUTION]
> It can increase yout git flow time if your run this command in pre-commit stage


Note that we face some issues about the use of _Gitleaks GitHub Action_ and _Gitleaks_ as CLI command, for fur further details see [#131](https://github.com/gitleaks/gitleaks-action/issues/131), [#132](https://github.com/gitleaks/gitleaks-action/issues/132) and [#1331](https://github.com/gitleaks/gitleaks/issues/1331).

Remember _Gitleaks_ is also used in GitHub project side thanks to the [dedicated GitHub Action](https://github.com/marketplace/actions/gitleaks) but these controls are done online once commits have left the local environment.

## Linter

We use _SwiftLint_ in this project so as to be sure the source code follows defined guidelines for the syntax and other points.
You must run _SwiftLint_ in CLI or using _Xcode_ to be sure you don't keep and submit warnings.

We provide a command to run _SwiftLint_:
```shell
bundle exec fastlane lint
```

**In most of cases you must fix warnings, or explain why in your commits and pull request comments you choose to disable them.**

Today, only in very few cases some _SwiftLint_ warnings are disabled at files (or lower) level:
- in tests classes
- in files containing tokens which will be generated
- in tokens providers

The warnings which can be disabled for token files: 
- *missing_docs*: because tokens will be generated without documentation by the tokenator
- *identifier_name*: because the name of the tokens are defined in *Figma* and strongly related to the design system, and in they can be long
- *line_length*: because tokens definition can take a lot of place
- *file_length*: because the files containing declarations or definitions of tokens can be very long

The warnings which can be disabled for test classes files and mocks files:
- *identifier_name*: because of length of tokens names 
- *type_name*: because stringly related to the types under test, which can have a long name
- *line_length*: because of length of tokens names
- *file_length*: because of the amount of tokens to test
- *type_body_length*: because we can have a lot of tests to do
- *function_body_length*: because we can have function with a lot of assertions
- *force_try*: because we can need tod efine some configuration variable we are sure they work (like regxp)
- *required_deinit*: because we do not need to manage init and deinit of test classe
- *implicitly_unwrapped_optional*: because for declaration of themes to test we bang!

Do not forget if possible to enable the warnings in the end of the file to reduce as much as possible the scope of the disabled warnings. Disable warnings only if needed.

## Formater

We use [SwiftFormat](https://github.com/nicklockwood/SwiftFormat) to format sources and keep them clean. This tool is use in Xcode build phase.
You can run *SwiftFormat* in CLI:

```shell
bundle exec fastlane format
```

A *Git pre-commit hook* is also defined in the project. It will run *SwifFormat* before the commit so as to be sure the sources will be well formatted before being pushed.
The hook is degined in **.git-hook/pre-commit**.
To apply it, run in your project (e.g. once cloned):

```shell
git config --local --add core.hooksPath .git-hooks
```

## Dead code

We use [Periphery](https://github.com/peripheryapp/periphery) to look for dead code and help developers to track it and remove it.
This tool is run in CI/CD side and can be run localy using *Fastlane*:

Install *Periphery*:
```shell
brew install peripheryapp/periphery/periphery
```

And run:
```shell
bundle exec fastlane check_dead_code
```

## Software Bill of Materials

For software quality reasons, intellectual property compliance, users trust and legal oblgitations with Cyber Resilience Act (CRA) and NIS2, it it interesing or mandatory to keep updated a Software Nill Of Materials (SBOM). And with such file listing dependencies in several levels we are able to make scans of them and check if there are known vulnerabilities.
To do these operations, we use [Syft](https://github.com/anchore/syft) to generate a SBOM in SPDX JSON format, which will processed by [Grype](https://github.com/anchore/grype) to check if there are known vulnerabilities.

These operations, triggered in CLI, are wrapped in a Fastlane command:
```shell
bundle exec fastlane update_sbom
```

You may need to udpate *grype* before so as to use an updated database for vulnerabilities checks:
```shell
brew install grype
```

## Update of dependencies

 > [!TIP]
 > It is important to keep updated dependencies for its softwar,e but some steps must be processed carefully.

To update dependencies of the project, supossing *Renovate* for example provides pull requests:
- Check the new version of the dependency to update: is a a major release? minor? bug fix? Does it bring breaking changes? Does it fix vulnerabilities?
- Have a look on the dependency release note or changelog to get enough details
- Check in a dedicated branch if the CI/CD works fine still
- Check if there is no issues or troubles with this new version (update of license, unstabilities, etc.)
- Get the updates
- Update the changelog
- Update the SBOM
- Make a nice commit message (e.g. `chore(deps):`) for the merge

## CI/CD

### GitHub Action

We use *GitHub Actions* so as to define several workflows with some actions to build, test, check, documentation and audit the library.

It will help us to ensure code on pull requests or being merged compiles and has all tests green.

Workflows are the following:
- [build-and-test](https://github.com/Orange-OpenSource/ouds-ios/blob/develop/.github/workflows/build-and-test.yml) to build and run unit tests
- [build-documentation](https://github.com/Orange-OpenSource/ouds-ios/blob/develop/.github/workflows/build-documentation.yml) to ensure documentation can be built from sources without warnings
- [codeql](https://github.com/Orange-OpenSource/ouds-ios/blob/develop/.github/workflows/codeql.yml) to automated security checks
- [dependency-review](https://github.com/Orange-OpenSource/ouds-ios/blob/develop/.github/workflows/codeql.yml) to scan dependency manifest files surfacing known-vulnerable versions of the packages declared or updated in pull requests
- [gitleaks](https://github.com/Orange-OpenSource/ouds-ios/blob/develop/.github/workflows/gitleaks.yml) to check if there are secrets leaks
- [periphery](https://github.com/Orange-OpenSource/ouds-ios/blob/develop/.github/workflows/periphery.yml) to check if there is dead code
- [scorecard](https://github.com/Orange-OpenSource/ouds-ios/blob/develop/.github/workflows/scorecard.yml) to buold the OpenSSF score card on README
- [swiftlint](https://github.com/Orange-OpenSource/ouds-ios/blob/develop/.github/workflows/swiftlint.yml) to check if there is no linter warnings
- [swiftpolyglot](https://github.com/Orange-OpenSource/ouds-ios/blob/develop/.github/workflows/swiftpolyglot.yml) to check if there are localizations troubles

We use also two GitHub apps making controls on pull requests and defining wether or not prerequisites are filled or not.
There is one control to check if [PR template are all defined ](https://github.com/stilliard/github-task-list-completed), and one if [DCO is applied](https://probot.github.io/apps/dco/).

Note the workflow about the documentation builds it but does not expose it online. It allows us to ensure the documentation can be built on the current code base.

### GitLab CI (internal)

We use *GitLab CI*for CI/CD with our own runners so as to keep private our sensitive files likes certificates and provisioning profiles.
Our current plan does not allow to make GitHub mirroring, so we use GitHub HTTP REST API to download sources, before using Xcode to build and sign.
However of course you will have to define all the variables, secrets and have the mandatory files.

You can find more details about the pipelines, how to set up runners and scripts to use [in the wiki](https://github.com/Orange-OpenSource/ouds-ios/wiki/51-%E2%80%90-About-continuous-integration-and-delivery).

In few words, there is a pipeline containing some stages and jobs to build alpha, nightly/beta and production releases.