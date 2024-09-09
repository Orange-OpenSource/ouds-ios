# Developer guide

- [Technical preconditions](#technical-preconditions)
- [Build showcase demo app](#build-showcase-demo-app)
- [Documentation](#documentation)
- [Build phases](#build-phases)
- [Targets](#targets)
- [Certificates, profiles and identifiers](#certificates-profiles-and-identifiers)
- [Update dependencies with Renovate](#update-dependencies-with-renovate)
- [Developer Certificate of Origin](#developer-certificate-of-origin)
- [Commits, changelog, release note, versioning](#commits-changelog-release-note-versioning)
  * [About commits](#about-commits)
  * [About release note](#about-release-note)
  * [About changelog](#about-changelog)
- [Use of Gitleaks](#use-of-gitleaks)
- [CI/CD](#cicd)

## Technical preconditions

You should check wether or not you have the tools in use in the project like _Fastlane_, _SwiftLint_, _SwiftFormat_, etc.
You can have a look for example in thr **THIRD\_PARTY.md** file which lists any dependencies and tools we use are different levels (SDK, showcase app, projects).

If some tools are missing, pick the suitable command line below:
```bash
# Use Bundler to install a major part of dependencies (thanks to Gemfile and Gemfile.lock files)
bundle install

# Use CocoaPods to install other dependencies not available as rubygems (thanks to Podfile and Podfile.lock files)
bundle exec pod install

# Some dependencies must be downloaded by hand:
# For Periphery (https://github.com/peripheryapp/periphery) (dead code hunt)
brew install peripheryapp/periphery/periphery
# For gitleaks (https://github.com/gitleaks/gitleaks) (secrets leaks)
brew install gitleaks
```

We use also for our GitLab CI runners **Xcode 15.3**, we suggest you use this version or newer if you want but beware.

## Build showcase demo app

To build the demo application follow those steps:

1. `cd Showcase`
2. `bundle exec pod install`
3. Open *Showcase.xcworkspace*
4. Select *Showcase* scheme
5. Build and run the Application on your device ou simulator

## Documentation

_To be defined soon_

## Build phases

The project contains several custom build phases so as to automatize several steps:

1. _SwiftLint_ will run the linter on the sources

Note that sources headers are defined in *IDETemplateMacros.plist* inside *Showcase/Showcase.xcworkspace/xcshareddata*

## Targets

The Xcode project contains two targets:

1. _Showcase_ for the demo application
2. _Periphery_ to look for dead code in the source code

## Certificates, profiles and identifiers

We choose to use Xcode automatic signing for debug builds of the app so as to make easier onboarding of newcomers in development team, and also to prevent to update provisioning profiles with individual developers certificates each team someone wants to build the app and also to prevent to register each new build device). You may need to be part of our team if you want to build in debug mode.
Note the bundle identifier here for local builds is **com.orange.ouds.demoapp-debug**, with a **-debug** suffix so as to prevent any local build to be replaced by TestFlight builds which have **com.orange.ouds.demoapp** identifiers.

However for release builds we use a dedicated _provisioning profile_ built with of course a _distribution certificate_(.p12 format with private key, not .cer) and the _bundle identifier_ `com.orange.ouds.demoapp` for our _Apple Team_ `France Telecom (MG2LSJNJB6)`. Thus you won't be able to build and sign in release mode without this provisioning profile and this distribution certificate. These elements are stored in our local GitLab CI runners and must not be available outside.

## Update dependencies with Renovate

Sometimes dependencies should be updated, with for example warnings of [Renovate bot](https://github.com/apps/renovate).

Here is the list of files to update to keep the project clean:
- CHANGELOG (to note for releases the update of the version)
- THIRD_PARTY (because we list all third-party components and their versions, it is a good practice)
- Of course, update and save in your VCS the new states of the _Podfile_, _Package.swift_ or _Gemfile_ (and do not forget locks!)

Maybe you will need to update your pods repo before if you updated a Pod:

```shell
bundle exec pod install --repo-update
```

## Developer Certificate of Origin

A [GitHub Action bot](https://probot.github.io/apps/dco/) has been plugged in the repository so as to check wether or not the DCO is applied for commits.

## Commits, changelog, release note, versioning

### About commits

Try as best as possible to apply [conventional commits rules](https://www.conventionalcommits.org/en/v1.0.0/).
Keep in mind to have your commits well prefixed, and with the issue number between parenthesis at the end.
If your commits embed contributions for other people, do not forget to [add them as co-authors](https://docs.github.com/fr/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/creating-a-commit-with-multiple-authors).
All of you should also comply to DCO.

For example, given a commit to fix the issue n°42, the commit should be like:

```text
fix: title of your commit (#42)

Some details about the fix you propose

Co-authored-by: First author firstname and lastname <first author email>
Co-authored-by: Second author firstname and lastname <second author email>

Signed-off-by: First author firstname and lastname <first author email>
Signed-off-by: Second author firstname and lastname <second author email>
```

You can also, if you want and used to hooks, add a commit hook locally on your computer to check commit messages before saving them.
To do that create first a hook and give to it execution grant:

```shell
touch .git/hooks/commit-msg
chmod u+x .git/hooks/commit-msg
```

Then add the following code in `commit-msg`:

```shell
#!/bin/bash

# Define patterns for commit message prefixes
# All these prefixes must of course match the rules define for commits parsers in some the cliff.toml files
# for CHANGELOG / RELEASE NOTE generation
# See https://www.conventionalcommits.org/en/v1.0.0/
PATTERN_SECTION_ADDED="feat:|chore: add"
PATTERN_SECTION_REMOVED="refactor: remove|refactor: delete|chore: remove|chore: delete"
PATTERN_SECTION_DEPRECATED="refactor\(deprecated\):|chore\(deprecated\)"
PATTERN_SECTION_FIXED="fix:"
PATTERN_SECTION_SECURITY="fix\(security\):"
PATTERN_SECTION_BREAKING="feat!:|chore!:|refactor!:|fix!:"
PATTERN_SECTION_CHANGED="build:|chore:|ci:|docs:|style:|refactor:|perf:|test:"

# All acceptable patterns
COMMIT_PREFIX_PATTERN="^($PATTERN_SECTION_ADDED|$PATTERN_SECTION_REMOVED|$PATTERN_SECTION_DEPRECATED|$PATTERN_SECTION_FIXED|$PATTERN_SECTION_SECURITY|$PATTERN_SECTION_BREAKING|$PATTERN_SECTION_CHANGED)"

INPUT_FILE=$1
COMMIT_MESSAGE=`head -n1 $INPUT_FILE`
if ! [[ "$COMMIT_MESSAGE" =~ $COMMIT_PREFIX_PATTERN ]]; then
    echo "Bad commit message, it must match one of the following patterns:"
    echo -e "\tTo add things............: 'feat:' \t \t  \t 'chore: add'"
    echo -e "\tTo remove things.........: 'refactor: remove' \t \t 'refactor: delete' \t 'chore: remove' \t 'chore: delete'"
    echo -e "\tTo deprecate things......: 'refactor(deprecated)' \t 'chore(deprecated)'"
    echo -e "\tTo fix things............: 'fix:"
    echo -e "\tFor security fixes.......: 'fix(security)'"
    echo -e "\tFor breaking changes.....: 'feat!:' \t 'chore!:' \t 'refactor!:' \t \t 'fix!:'"
    echo -e "\tFor any other changes....: 'build:' \t 'chore:' \t 'ci:' \t \t \t 'docs:' \t \t 'style:' \t 'refactor:' \t 'perf:' \t 'test:'"
    echo "Your commit message: '$COMMIT_MESSAGE'"
    exit 1
fi

exit 0
```

### About release note

We try also to apply [keep a changelog](https://keepachangelog.com/en/1.0.0/), and [semantic versioning](https://semver.org/spec/v2.0.0.html) both with [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).

You can generate a `RELEASE_NOTE.md` file using your Git history and [git cliff](https://git-cliff.org/) tool.
Define first a `cliff.toml` configuration file containing the code below.

```toml
# git-cliff ~ configuration file
# https://git-cliff.org/docs/configuration

[changelog]
# changelog header
header = """
# Release Note\n
All notable changes for this version are here and blablabla.\n
"""
# template for the changelog body
# https://keats.github.io/tera/docs/#introduction
body = """
{% if version -%}
    ## [{{ version | trim_start_matches(pat="v") }}] - {{ timestamp | date(format="%Y-%m-%d") }}
{% else -%}
    ## [Unreleased]
{% endif -%}
{% for group, commits in commits | group_by(attribute="group") %}
    ### {{ group | upper_first }}
    {% for commit in commits %}
        - {{ commit.message | upper_first }} ({{ commit.id }})\
    {% endfor %}
{% endfor %}\n
"""
# remove the leading and trailing whitespace from the templates
trim = true

[git]
# parse the commits based on https://www.conventionalcommits.org
conventional_commits = true
# filter out the commits that are not conventional
filter_unconventional = true
# process each line of a commit as an individual commit
split_commits = false
# regex for parsing and grouping commits
commit_parsers = [
  { message = "^feat:", group = "🚀 Features" },
  { message = "^fix:", group = "🐛 Fixes" },
  { message = "^doc:", group = "📖 Docs" },
  { message = "^chore:", group = "🧰 Chore" },
  { message = "^refactor:", group = "🧰 Chore" },
  { message = "^style:", group = "🧰 Chore" },
  { message = "^test:", group = "🧰 Chore" },
  { message = "^ci:", group = "🧰 Chore" },
  { message = "^feat!:", group = "💥 Breaking changes" },
  { message = "^fix!:", group = "💥 Breaking changes" },
  { message = "^doc!:", group = "💥 Breaking changes" },
  { message = "^chore!:", group = "💥 Breaking changes" },
  { message = "^refactor!:", group = "💥 Breaking changes" },
  { message = "^style!:", group = "💥 Breaking changes" },
  { message = "^test!:", group = "💥 Breaking changes" },
  { message = "^ci!:", group = "💥 Breaking changes" },
  { message = "^.*", group = "🧰 Chore" },
]
commit_preprocessors = [
    { pattern = '.*', replace_command = 'git show -s --format=%B $COMMIT_SHA' }
]
# protect breaking changes from being skipped due to matching a skipping commit_parser
protect_breaking_commits = false
# filter out the commits that are not matched by commit parsers
filter_commits = true
# regex for matching git tags
tag_pattern = "v[0-9].*"
# regex for skipping tags
skip_tags = "v0.1.0-beta.1"
# regex for ignoring tags
ignore_tags = ""
# sort the tags topologically
topo_order = false
# sort the commits inside sections by oldest/newest order
sort_commits = "oldest"
```

Then run the following command to build a release note from tag1 to tag2 (or HEAD if tag2 does not exist):
```shell
git cliff --config cliff.toml --output RELEASE_NOTE.md tag1..tag2
```

### About changelog

You can use the same tool for CHANGELOG if you want to keep only one CHANGELOG, but this tool is not suitable if several CHANGELOG exist (like one per module).
In case you want one CHANGELOG, apply the following `.toml` file and run `git-cliff`.

```toml
# git-cliff ~ configuration file
# https://git-cliff.org/docs/configuration

[changelog]
# template for the changelog header
header = """
# Changelog\n
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).\n
"""
# template for the changelog body
# https://keats.github.io/tera/docs/#introduction
body = """
{% if version -%}
    ## [{{ version | trim_start_matches(pat="v") }}] - {{ timestamp | date(format="%Y-%m-%d") }}
{% else -%}
    ## [Unreleased]
{% endif -%}

{% for group, commits in commits | group_by(attribute="group") %}
    ### {{ group | upper_first }}
    {% for commit in commits %}
        - {{ commit.message | upper_first }}\
    {% endfor %}
{% endfor %}\n
"""
# template for the changelog footer
footer = """
{% for release in releases -%}
    {% if release.version -%}
        {% if release.previous.version -%}
            [{{ release.version | trim_start_matches(pat="v") }}]: \
                https://github.com/{{ remote.github.owner }}/{{ remote.github.repo }}\
                    /compare/{{ release.previous.version }}..{{ release.version }}
        {% endif -%}
    {% else -%}
        [unreleased]: https://github.com/{{ remote.github.owner }}/{{ remote.github.repo }}\
            /compare/{{ release.previous.version }}..HEAD
    {% endif -%}
{% endfor %}
<!-- generated by git-cliff -->
"""
# remove the leading and trailing whitespace from the templates
trim = true

[git]
# parse the commits based on https://www.conventionalcommits.org
conventional_commits = true
# filter out the commits that are not conventional
filter_unconventional = true
# process each line of a commit as an individual commit
split_commits = false
# regex for parsing and grouping commits
commit_parsers = [
    { message = "^feat:", group = "Added" },
    { message = "^chore: add", group = "Added" },

    { message = "^refactor: remove", group = "Removed" },
    { message = "^refactor: delete", group = "Removed" },
    { message = "^chore: remove", group = "Removed" },
    { message = "^chore: delete", group = "Removed" },

    { message = "^refactor\\(deprecated\\):", group = "Deprecated" },
    { message = "^chore\\(deprecated\\):", group = "Deprecated" },

    { message = "^fix:", group = "Fixed" },

    { message = "^fix\\(security\\):", group = "Security" },

    { message = "^feat!:", group = "Breaking Change" },
    { message = "^chore!:", group = "Breaking Change" },
    { message = "^refactor!:", group = "Breaking Change" },
    { message = "^fix!:", group = "Breaking Change" },
    
    { message = "^.*", group = "Changed" },
]
# protect breaking changes from being skipped due to matching a skipping commit_parser
protect_breaking_commits = true
# filter out the commits that are not matched by commit parsers
filter_commits = true
# regex for matching git tags
tag_pattern = "v[0-9].*"
# regex for skipping tags
skip_tags = "v0.1.0-beta.1"
# regex for ignoring tags
ignore_tags = ""
# sort the tags topologically
topo_order = false
# sort the commits inside sections by oldest/newest order
sort_commits = "oldest"
```

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

## CI/CD

We use GitLab CI for CI/CD with our own runners so as to keep private our sensitive files likes certificates and provisioning profiles.
Our currant plan does not allow to make GitHub mirroring, so we use GitHub HTTP REST API to download sources, before using Xcode to build and sign.
If you want to set up your runners, feel free to have a look on */docs_release/README.md*
However of course you will have to define all the variables, secrets and have the mandatory files listed above.

