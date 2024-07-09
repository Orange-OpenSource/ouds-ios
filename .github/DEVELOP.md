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

## Update dependencies

Sometimes dependencies should be updated, with for example warnings of [Renovate bot](https://github.com/apps/renovate).
Here is the list of files to update to keep the project clean:
- CHANGELOG (to note for releases the update of the version)
- THIRD_PARTY (because we list all third-party components)
- Of course, update and save in your VSC the new states of the Podfile, Package.swift or Gemfile (and do not forget locks!)

Maybe you will need to update your pods repo before if you updated a Pod:

```shell
bundle exec pod install --repo-update
```
