# Developer guide

## Check preconditions

You should check wether or not you have the tools in use in the project like _Fastlane_, _SwiftLint_, _SwiftFormat_, etc.
You can have a look for example in thr **THIRD\_PARTY.md** file which lists any dependencies and tools we use are different levels (SDK, showcase app, projects).

If some tools are missing, pick the suitable command line bellow:
```bash
# Use Bundler to install a major part of dependencies (thanks to Gemfile and Gemfile.lock files)
bundle install

# Use CocoaPods to install other dependencies not avaialble as rubygems (thanks to Podfile and Podfile.lock files)
bundle exec pod install

# Some dependencies must be downloaded by hand:

# For Periphery (https://github.com/peripheryapp/periphery) (dead code hunt)
brew install peripheryapp/periphery/periphery

# For gitleaks (https://github.com/gitleaks/gitleaks) (secrets leaks)
brew install gitleaks
```

## Build DemoApp

To build the demo application follow those steps:

1. `cd DemoApp`
2. `bundle exec pod install`
3. Open *DemoApp/DemoApp.xcworkspace*
4. Select *DemoApp* scheme
5. Build and run the Application on your device ou simulator

## Documentation

_To be defined soon_

## Build phases

The project contains several custom build phases so as to automatize several steps:

1. _SwiftLint_ will run the linter on the sources

Note that sources headers are defined in *IDETemplateMacros.plist* inside *DemoApp/DemoApp.xcworkspace/xcshareddata*

## Targets

The Xcode project contains three targets:

1. _OrangeDesignSystemDemo_ for the application
2. _Periphery_ to look for dead code in the source code

## Use of Gitleaks

[Gitleaks](https://gitleaks.io/) can be used to check if secrets can be leaked or not.
A [GitHub Action](https://github.com/gitleaks/gitleaks-action) has been integrated to the repository with a configuration file defined in _/github/workflows_ named _gitleaks-action.yaml_.
It will launch the _Gitleaks_ tool automatically.

Howevere this tool does not detect plain API key mixed in URL, that is a reason why _Gitleaks_ can be called in a pre-commit hook, using the _giteaks.toml_ at the root of the prokect.
To call _Gitleaks_ in pre-commit hooks, create a file named **pre-commit** inside _.git/hooks_ (then run `chmod u+x` in the file).
The place the bash code bellow in this file:

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

_Gitleaks_ is also used in GitHub project side thanks to the [dedicated GitHub Action](https://github.com/marketplace/actions/gitleaks).

## Update dependencies (Renovate)

Sometimes dependencies should be updated, with for example warnings of [Renovate bot](https://github.com/apps/renovate).

Here is the list of files to update to keep the project clean:
- CHANGELOG (to note for releases the update of the version)
- THIRD_PARTY (because we list all third-party components)
- Of course, update and save in your VSC the new states of the Podfile, Package.swift or Gemfile (and do not forget locks!)

Maybe you will need to update your pods repo before if you updated a Pod:

```shell
bundle exec pod install --repo-update
```

## Developer Certificate of Origine (DCO Bot)

A [GitHub Action bot](https://probot.github.io/apps/dco/) has been plugged in the repository so as to check wether or not the DCO is applied for commits.

## Commits, changelog, versioning

### About commits

Try as best as possible to apply [conventional commits rules](https://www.conventionalcommits.org/en/v1.0.0/).
Keep in mind to have your commits well prefixed, and with the issue number between parenthesis at the end.
If your commits embed contributions for other people, do not forget to [add them as co-authors](https://docs.github.com/fr/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/creating-a-commit-with-multiple-authors).
All of you should also comply to DCO.

For example, given a commit to fix the issue n°43, the commit should be like:

```text
fix: title of your commit (#43)

Some details about the fix you propose

Co-authored-by: First author firstname and lastname <first author email>
Co-authored-by: Second author firstname and lastname <second author email>

Signed-off-by: First author firstname and lastname <first author email>
Signed-off-by: Second author firstname and lastname <second author email>
```

You can also if you want and used to hooks add a commit hook locally on your computer to check commit messages before saving them.
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

### About changelogs

We try also to apply [keep a changelog](https://keepachangelog.com/en/1.0.0/) rules and [semantic versioning](https://semver.org/spec/v2.0.0.html)

You can generate a RELEASE_NOTE.md file using your Git history and [git cliff](https://git-cliff.org/) tool.
Define first a `cliff.toml` configuration file containing the code bellow.

```toml
# git-cliff ~ configuration file
# https://git-cliff.org/docs/configuration

[changelog]
# changelog header
header = """
# Release Note\n
All notable changes for this version are here and blablbla.\n
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
git cliff --config cliff.toml --output RELEASE_NOTE.md P1..P2
```
