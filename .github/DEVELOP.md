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
bundle exec pod install --repo-update

# Update your references
brew update

# For Periphery (https://github.com/peripheryapp/periphery) for dead code hunt (at least 2.21.0)
brew install peripheryapp/periphery/periphery

# For gitleaks (https://github.com/gitleaks/gitleaks) for secrets leaks hunt (at least 8.18.1)
brew install gitleaks
# or `brew reinstall gitleaks` to get updates if old version installed

# For SwiftLint (at least 0.57.0)
brew install swiftlint
# or `brew reinstall swiftlint` to get updates if old version installed

# For SwiftFormat (at least 0.52.4)
brew install swiftformat
# or `brew reinstall swiftformat` to get updates if old version installed
```

Ensure you have the suitable _Ruby_ version. We recommend the use of [rbenv](https://github.com/rbenv/rbenv) to load the suitable version of ruby.
We use here _Ruby 3_ (>= 3.3).
If you are not used to this tool:

```shell
# List available local versions of Ruby
rbenv install --list

# Apply the expected x.y.z version of Ruby (if listed previously with the command above)
rbenv global 3.3.5

# If you don't have the expected x.y.z version of Ruby, run:
# >  brew update && brew upgrade ruby-build
# >  rbenv install x.y.z
# then 
# >  rbenv global x.y.z

# Check Ruby version
ruby --version
```

We use also for our GitLab CI runners **Xcode 16**, we suggest you use this version or newer if you want.

**Xcode 16** and **Swift 6** are used for this project. You must use this configuration.

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
5. Select *iPhone 16 Pro* simulator (the device used to tests and views rendering)
6. Run tests (Product -> Test)

Beware, if you add new UI tests using [swift-snapshot-testing](https://github.com/pointfreeco/swift-snapshot-testing) library, you may have new tests which fail at first time.
Indeed for new tests the tool makes snapshots of the views, thus for the first run no previews exist making the tests fail. You should run the tests twice for new tests.

Such tests here are used to as to be sure the look and feel of any components and tokens rendering remain the expected ones.

Any interface modifications require regenerating the illustrations using the tool, i.e. run the tests twice. The reference illustrations have already been saved within the project.

**Note today because the showcase app is hosted in the repository, the tests assets are versioned too, thus the _Swift Package_ will be heavy when being downloaded because Xcode downloads the entire repository. When the showcase app will be extracted to an internal repository, the _Swift Package_ will be lighter**.

#### How to use to use swift-snapshot-testing library

1. Locate where are the reference images:
    - In the Package directory, you will find the reference screenshots for the Orange and Inverse themes (Light/Dark), which will serve as comparison baselines.
    ```text
    OUDS -> Showcase -> ShowcaseTests -> __Snapshots__
    ```
2. Navigate to the project :
    - Open your project in Xcode and go to a directory containing tests (e.g. here *OUDSTokensOpacityUITests*):
    ```shell
    Showcase -> ShowcaseTests -> OUDSTokensOpacityUITests -> OUDSTokensOpacityUITests.swift
    ```
3. Open a test file (e.g. here *OUDSTokensOpacityUITests*):
    - Open the file `OUDSTokensOpacityUITests.swift`.
4. Run the snapshot test (success):
    - Locate and execute some function like `testAllOpacitiesOrangeThemeLight()`.

      <img width="897" alt="OrangeThemeLight_OpacityTest_Success" src="https://github.com/user-attachments/assets/550bed90-6bc9-4d68-aaf0-8e04de35d916">
 
The snapshot tool fetched the reference image to compare it against the current screen and detected no differences, resulting in a success

5. Run the snapshot test (failure):
    - We will deliberately change the image by setting the `OpacityOpaque` token to `OpacityInvisible` in class `OpacityTokenPage.swift`

      <img width="561" alt="IntentionalTokenModification" src="https://github.com/user-attachments/assets/1d138b7b-2998-40b7-bf39-d9a597ced6c0">
    - Test result failure :

    <img width="897" alt="IntentionalUITestError" src="https://github.com/user-attachments/assets/0a6bb578-adba-42f1-abe8-e2f50ddba2a7">

   The *swift-snapshot-testing tool* indicates that the issue originates from the transparent token illustration. We can observe that there are two paths: the first corresponds to our reference illustration (the one we intend to base our comparison on), while the second path is the illustration used for the current image of the application. You can open both paths and visually compare the differences.

7. Verify the output:
    - It is recommended to use the `Show the Report Navigator` tool in Xcode :

    <img width="512" alt="ShowReportNavigator_Xcode" src="https://github.com/user-attachments/assets/8d866d79-5dfc-46c7-934e-8d03ec1fc667">

    - In Xcode go to :

    ```shell
    ShowcaseTests -> ShowcaseTests/ShowcaseTests
    ```

    <img width="1206" alt="TestResult_Failed_testAllOpacitiesOrangeThemeLight" src="https://github.com/user-attachments/assets/1793df83-ffc1-4226-8be2-fbd7e2b71deb">

8. Comparison (reference and failure):
   
   **Reference:**

    <img width="1307" alt="OpacityReferenceImage" src="https://github.com/user-attachments/assets/493dabde-4139-468f-a57b-10ee5a5269c1">


   **Failure:**

   <img width="1364" alt="OpacityFailureImage" src="https://github.com/user-attachments/assets/03cfe17f-3752-4aba-a482-f89d3b89f53d">


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
- `feat(API)!:` breaking change in the API because..
- `feat:` add something in the API...

#### Chain of responsability

We can add metafields picked from [this good guideline](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/submitting-patches.rst#n525) in the commit messages.

This is not mandatory (yet) but a good practice and quite interesting to know who reviewed and validated what.

For example, given a commit to fix the issue n°42, with Foo FOO and Bar BAR as commit authors, with Wizz WIZZ as source code reviewer, and John DOE as accessibility / PO / design reviewer, the commit should be like:

```text
fix: title of your commit (#42)

Some details about the fix you propose

Co-authored-by: Foo FOO <foo email>
Co-authored-by: Bar BAR <bar email>

Reviewed-by: Wizz WIZZ <wizz email>

Acked-by: John DOE <john email>

Signed-off-by: Foo FOO <foo email>
Signed-off-by: Bar BAR <bar email>
```

#### Integration of tokenator updates

You should refer to the [dedicated page in the wiki for more details](https://github.com/Orange-OpenSource/ouds-ios/wiki/20-%E2%80%90-How-to-update-tokens).

Keep in mind the commit adding *tokenator* updates in the codebase must be formatted like

```text
chore(🤖): update `OpacityRawTokens` (tokenator generation 20241021134644) (#225)
``` 

i.e. precise the tokens updated, the *tokenator* generation timestamp and the pull request number.

### About release note and changelog

We try also to apply [keep a changelog](https://keepachangelog.com/en/1.0.0/), and [semantic versioning](https://semver.org/spec/v2.0.0.html) both with [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).

We do not generate yet `RELEASE_NOTE.md` file using the Git history and [git cliff](https://git-cliff.org/) tool.
Today we update the unique CHANGELOG manualy, but you can find [in the wiki more details about the use of git-cliff](https://github.com/Orange-OpenSource/ouds-ios/wiki/52-%E2%80%90-About-changelog,-release-notes-and-hooks)

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

### GitHub Action

We use *GitHub Actions* so as to define a workflow with some actions to build demo application and test the library.
It will help us to ensure code on pull requests or being merged compiles and has all tests green.
This workflow is defined in [this YAML](https://github.com/Orange-OpenSource/ouds-ios/blob/develop/.github/workflows/build-and-test.yml), and makes build, unit tests and UI tests. Keep in mind we may have [some troubles with UI tests](https://github.com/Orange-OpenSource/ouds-ios/issues/305).

We have also a *gitleaks* workflow making some scans on the code to look fo secrets leaks, defined in [this YAML](https://github.com/Orange-OpenSource/ouds-ios/blob/develop/.github/workflows/gitleaks-action.yml).

We use also two GitHub apps making controls on pull requests and defining wether or not prerequisites are filled or not.
There is one control to check if [PR template are all defined ](https://github.com/stilliard/github-task-list-completed), and one if [DCO is applied](https://probot.github.io/apps/dco/).

Finaly we have [this *GitHub Action*](https://github.com/cirruslabs/swiftlint-action) using _SwiftLint_ to ensure no warnings are in our codebase.

### GitLab CI (internal)

We use *GitLab CI*for CI/CD with our own runners so as to keep private our sensitive files likes certificates and provisioning profiles.
Our current plan does not allow to make GitHub mirroring, so we use GitHub HTTP REST API to download sources, before using Xcode to build and sign.
However of course you will have to define all the variables, secrets and have the mandatory files.

You can find more details about the pipelines, how to set up runners and scripts to use [in the wiki](https://github.com/Orange-OpenSource/ouds-ios/wiki/51-%E2%80%90-About-continuous-integration-and-delivery).

In few words, there is a pipeline containing some stages and jobs to build alpha, nightly/beta and production releases.
