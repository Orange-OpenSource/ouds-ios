# Developer guide

- [Technical preconditions](#technical-preconditions)
- [Build showcase demo app](#build-showcase-demo-app)
- [Documentation](#documentation)
- [Run tests](#run-tests)
  * [Unit tests for OUDS Swift package](#unit-tests-for-ouds-swift-package)
  * [UI tests in demo app](#ui-tests-in-demo-app)
- [Build phases](#build-phases)
- [Targets](#targets)
- [Certificates, profiles and identifiers](#certificates-profiles-and-identifiers)
- [Update dependencies with Renovate](#update-dependencies-with-renovate)
- [Developer Certificate of Origin](#developer-certificate-of-origin)
- [Commits, changelog, release note, versioning](#commits-changelog-release-note-versioning)
  * [About commits](#about-commits)
  * [About release note and changelog](#about-release-note-and-changelog)
- [Use of Gitleaks](#use-of-gitleaks)
- [Linter](#linter)
- [CI/CD](#cicd)

## Technical preconditions

You should check wether or not you have the tools in use in the project like _Fastlane_, _SwiftLint_, _SwiftFormat_, etc.
You can have a look for example in the **THIRD\_PARTY.md** file which lists any dependencies and tools we use at different levels (SDK, showcase app, projects).
Have a look on the locks file to know which versions we are using (*Podfile*, *Podfile.lock*, *Packages.swift*, *Package.resolved*, *Gemfile*, *Gemfile.lock*).

If some tools are missing, pick the suitable command line below and check versions:
```bash
# Use Bundler to install a major part of dependencies (thanks to Gemfile and Gemfile.lock files)
bundle install

# Use CocoaPods to install other dependencies not available as rubygems (thanks to Podfile and Podfile.lock files)
bundle exec pod install

# For Periphery (https://github.com/peripheryapp/periphery) for dead code hunt (at least 2.21.0)
brew install peripheryapp/periphery/periphery

# For gitleaks (https://github.com/gitleaks/gitleaks) for secrets leaks hunt (at least 8.18.1)
brew install gitleaks

# For SwiftLint (at least 0.52.4)
brew install swiftlint

# For SwiftFormat (at least 0.52.4)
brew install swiftformat
```

Ensure you have the suitable _Ruby_ version. We recommend the use of [rbenv](https://github.com/rbenv/rbenv) to load the suitable version of ruby.
We use here _Ruby 3_ (3.1.x).
If you are not used to this tool:

```shell
# List available local version of Ruby
rbenv install --list

# Apply the 3.1.2 version of Ruby (if listed previously)
rbenv global 3.1.2

# Check Ruby version
ruby --version
```

We use also for our GitLab CI runners **Xcode 15.3**, we suggest you use this version or newer if you want but beware.
**Xcode 16** use will come.

## Build showcase demo app

To build the demo application follow those steps:

1. `cd Showcase`
2. `bundle exec pod install`
3. Open *Showcase.xcworkspace*
4. Select *Showcase* scheme
5. Build and run the Application on your device ou simulator

## Documentation

The documentation is based on the Swift documentation with [DocC](https://www.swift.org/documentation/docc/).
We use Xcode to build the documentation then export each DocC catalog as DocC archive and, finaly, merge the HTML documentations for the online version.

The documentation can be built from Xcode with _Product > Build Documentation_.

The `uploadWebDoc.sh` script helps to build the HTML version of documentation and compress it in ZIP file, and also can update
the online version based on [_GitHub Pages_](https://pages.github.com/), this version is hosted in the [*gh-pages* GitHub branch](https://github.com/Orange-OpenSource/ouds-ios/tree/gh-pages).

## Run tests 

### Unit tests for OUDS Swift package

To run these unit tests follow some steps:

1. `cd Showcase`
2. `bundle exec pod install`
3. Open *Showcase.xcworkspace*
4. Select *Showcase* scheme
5. Run tests (Product -> Test)

Unit tests care have been implemented for several reasons. 

First, we don't have too much control on the raw tokens values. We rely on the _Figma_ design tool which outputs the tokens in a JSON file. 
And this file will be parsed to as to generate Swift files. But if there are inconsistencies in the _Figma_ side or in the parser side, the inconsistencies will be spread in our code base. 
It is not useful to define unit tests for raw tokens to test their values ; in fact they exist here to be updated.
But we wan still check other things like the relationship between them. For example a _grid100_ should always be less or equal than a _grid100_. Some _color100_ should be always lighter than a _color200_, etc, etc. A small typo should be always smaller or with the sale size has a one-step-bigger typo.

Then, we want to know when tokens have been removed so as to warn our users and keep release notes and changelog clean. If we don't spot such changes, maybe some users will be impacted.

Finally, we ensure our themes can override any semantic tokens. Themes are in fact a set of values for the whole universe of semantic tokens, and if a theme cannot override a semantic token, there could be an issue. Unit tests also help us to find if some tokens have been removed before releasing the library.

### UI tests in demo app

To run these UI tests follow some steps:

1. `cd Showcase`
2. `bundle exec pod install`
3. Open *Showcase.xcworkspace*
4. Select *ShowcaseTests* scheme
5. Select some simulator (tests designed for *iPhone 13 Pro Max* and *iPhone 14 Pro Max* but works elsewhere)
6. Run tests (Product -> Test)

Beware, if you add new UI tests using [swift-snapshot-testing](https://github.com/pointfreeco/swift-snapshot-testing) library, you may have new tests which fail at first time.
Indeed for new tests the tool makes snapshots of the views, thus for the first run no preview exist making the tests fail. You should run the tests twice for new tests.

Such tests here are used to as to be sure the look and feel of any components and tokens rendering remaing the expected ones.

## Build phases

The project contains several custom build phases so as to automatize several steps:

1. _SwiftLint_ will run the linter on the sources

Note that sources headers are defined in *IDETemplateMacros.plist* inside *Showcase/Showcase.xcworkspace/xcshareddata*

## Targets

The Xcode project contains two targets:

1. _Showcase_ for the demo application
2. _Periphery_ to look for dead code in the source code
3. _ShowcaseTests_ for UI tests in demo app

## Certificates, profiles and identifiers

We choose to use Xcode automatic signing for debug builds of the app so as to make easier onboarding of newcomers in development team, and also to prevent to update provisioning profiles with individual developers certificates each team someone wants to build the app and also to prevent to register each new build device. You may need to be part of our team if you want to build in debug mode.
Note the bundle identifier here for local builds is **com.orange.ouds.demoapp-debug**, with a **-debug** suffix so as to prevent any local build to be replaced by TestFlight builds which have **com.orange.ouds.demoapp** identifiers.

However for release builds we use a dedicated _provisioning profile_ built with of course a _distribution certificate_(.p12 format with private key, not .cer) and the _bundle identifier_ `com.orange.ouds.demoapp` for our _Apple Team_ `France Telecom (MG2LSJNJB6)`. Thus you won't be able to build and sign in release mode without this provisioning profile and this distribution certificate. These elements are stored in our local GitLab CI runners and must not be available outside.

## Update dependencies with Renovate

Sometimes dependencies should be updated, with for example warnings of [Renovate bot](https://github.com/apps/renovate).

Here is the list of files to update to keep the project clean:
- CHANGELOG (to note for releases the update of the version)
- THIRD_PARTY (because we list all third-party components, it is a good practice)
- Of course, update and save in your VCS the new states of the _Podfile_, _Package.swift_ or _Gemfile_ for example (and do not forget locks!)

Maybe you will need to update your pods repo before if you updated a Pod:

```shell
bundle exec pod install --repo-update
```

## Developer Certificate of Origin

A [GitHub Action bot](https://probot.github.io/apps/dco/) has been plugged in the repository so as to check wether or not the DCO is applied for commits.

## Commits, changelog, release note, versioning

### About commits

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
- `feat(API)!:` breaking change in the API because..
- `feat:` add something in the API...

For example, given a commit to fix the issue n°42, the commit should be like:

```text
fix: title of your commit (#42)

Some details about the fix you propose

Co-authored-by: First author firstname and lastname <first author email>
Co-authored-by: Second author firstname and lastname <second author email>

Signed-off-by: First author firstname and lastname <first author email>
Signed-off-by: Second author firstname and lastname <second author email>
```

### About release note and changelog

We try also to apply [keep a changelog](https://keepachangelog.com/en/1.0.0/), and [semantic versioning](https://semver.org/spec/v2.0.0.html) both with [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).

We do not generate yet `RELEASE_NOTE.md` file using the Git history and [git cliff](https://git-cliff.org/) tool.
Today we update the unique CHANGELOG manualy, but you can find [in the wiki more details about the use of git-cliff](https://github.com/Orange-OpenSource/ouds-ios/wiki/7-%E2%80%90-About-changelog,-release-notes-and-hooks)

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
gitleaks detect -v -l debug --source .
```

Note that we face some issues about the use of _Gitleaks GitHub Action_ and _Gitleaks_ as CLI command, for fur further details see [#131](https://github.com/gitleaks/gitleaks-action/issues/131), [#132](https://github.com/gitleaks/gitleaks-action/issues/132) and [#1331](https://github.com/gitleaks/gitleaks/issues/1331).

Remember _Gitleaks_ is also used in GitHub project side thanks to the [dedicated GitHub Action](https://github.com/marketplace/actions/gitleaks) but these controls are done online once commits have left the local environment.

## Linter

We use _SwiftLint_ in this project so as to be sure the source code follows defined guidelines for the syntax and other points.
You must run _SwiftLint_ in CLI or using _Xcode_ to be sure you don't keep and submit warnings.
**In most of cases you must fix warnings, or explain why in your commtis and pull request comments you choose to disable them.**

Today, only in very few cases some SwiftLint warnings are disabled:
- in tests classes
- in files containing tokens which will be generated

The warnings which can be disabled for token files: 
- *missing_docs*: because tokens will be generated without documentation by the tokenator
- *identifier_name*: because the name of the tokens are defined in *Figma* and strongly related to the design system
- *line_length*: because tokens definition can take a lot of place
- *file_length*: because the files containing declarations or definitions of tokens can be very long

The warnings which can be disabled for test classes files and mocks files:
- *identifier_name*: because of length of tokens names 
- *type_name*: because stringly related to the types under test, which can have a long name
- *line_length*: because of length of tokens names
- *file_length*: because of the amount of tokens to test
- *type_body_length*: because we can have a lot of tests to do
- *required_deinit*: because we do not need to manage init and deinit of test classe
- *implicitly_unwrapped_optional*: because for declaration of themes to test we bang!

Do not forget if possible to enable the warnings in the end of the file to reduce as much as possible the scope of the disabled warnings. Disable warnings only if needed.

## CI/CD

We use GitLab CI for CI/CD with our own runners so as to keep private our sensitive files likes certificates and provisioning profiles.
Our currant plan does not allow to make GitHub mirroring, so we use GitHub HTTP REST API to download sources, before using Xcode to build and sign.
If you want to set up your runners, feel free to have a look on */docs_release/README.md*
However of course you will have to define all the variables, secrets and have the mandatory files listed above.

You can find more details about the pipelines and script [in the wiki](https://github.com/Orange-OpenSource/ouds-ios/wiki/5-%E2%80%90-About-continuous-integration-and-delivery).