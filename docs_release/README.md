# OUDS iOS release guide

This file lists all the steps to follow when releasing a new version of OUDS iOS.

- [Prepare release](#prepare-release)
- [Release](#release)
  * [Publish release to GitHub](#publish-release-to-github)
- [Prepare Next Release](#prepare-next-release)
- [About CI/CD with GitLab CI](#about-cicd-with-gitlabci)
  * [GitLab CI pipeline](#gitlab-ci-pipeline)
  * [Prepare environement build Shell script](#prepare-environement-build-shell-script)  
  * [GitHub download Shell script](#github-download-shell-script)
- [How it works](#how-it-works)
  * [Alpha builds](#alpha-builds)
  
## Prepare release

- Create a branch named `prepare-release` to prepare the new release for OUDS iOS version X.Y.Z.

    ```shell
    # For example in CLI
    git checkout -b prepare-release develop
    ```

- Switch to this branch and apply following changes:
    
    - Update the changelog.

    ```
    \## [Unreleased]\(https://github.com/Orange-OpenSource/ouds-ios/compare/P.Q.R...develop)
    ```
     to

     ```
     \## [X.Y.Z]\(https://github.com/Orange-OpenSource/ouds-ios/compare/P.Q.R...X.Y.Z) - YYYY-MM-dd
    ```
    where P.Q.R is the previous version tag, X.Y.Z the version we are releasing.

    <!-- TODO Add AppNews file details -->

    - Ensure the marketing version defined in Xcode is updated with the new X.Y.Z
    <!-- TODO add details about docs -->
    <!-- - Update the version precised in *home_content* file -->
    <!-- - Archive the documentation in `docs/X.Y.Z`. -->
    <!-- - Update Jekyll configuration files.<br /><br /> -->

- Verify the changes mentioned above, then commit and push.
    ```shell
    git add --all                           # Or make more fine add of course if you want
    git commit -s -m $'your commit message' # For example "Prepare version X.Y.Z", -S for GPG sign is allowed but not mandatory
    git push origin prepare-release
    ```

    <!-- TODO Add reference and mention to documentaiton build -->
    <!-- Please see [DEVELOP.md](../.github/DEVELOP.md#documentation) to get more information about how to build and verify the documentation. -->

    <!-- Once the Jekyll server is started, the documentation for version X.Y.Z should be available at http://127.0.0.1:4000/ods-ios/X.Y.Z/. -->
      
- Create a new pull request named `Prepare release X.Y.Z` on GitHub to merge your branch into `develop`.

- Review and merge this pull request on GitHub.<br /><br />

## Release

- Create a new pull request named `Release X.Y.Z` on GitHub to merge `develop` into `main`.

- Review and merge this pull request on GitHub. The merge strategy must be a **simple merge without squash of commits** (this strategy is only dedicated to feature branches to merge in develop branch).

- Launch a job on your runner to build the demo application
- Or use _Fastlane_ command:
    ```shell
    # Variables for application signing
    export OUDS_DEVELOPER_APP_IDENTIFIER=<your_app_identifier>
    export OUDS_FASTLANE_APPLE_ID=<your_apple_email_address>
    export OUDS_DEVELOPER_PORTAL_TEAM_ID=<your_developer_portal_team_ID>
    
    # Variables to Upload to TestFlight
    export OUDS_APPLE_KEY_ID = <your_key_ID>
    export OUDS_APPLE_ISSUER_ID = <your_issuer_ID>
    export OUDS_APPLE_KEY_CONTENT = <your_key_content>
    
    bundle exec fastlane prod upload:true
    # set "upload" to true if you want to upload app to TestFlight, false otherwise.
    ```

### Publish release to GitHub

- Go to [GitHub Releases](https://github.com/Orange-OpenSource/ouds-ios/releases).

- Click on `Draft a new release`.

    <!-- TODO update screenshot -->
    <!-- ![Edit GitHub release](images/github_release_01.png) -->

- Create a new tag X.Y.Z. **Warning, maybe git-cliff will need tag prefixed by v, so the documentation should be applied with this new rule**

    <!-- TODO update screenshot -->
    <!-- ![Create tag](images/github_release_02.png) -->

- Add release notes and verify using the preview tab.

    <!-- TODO Check with git-cliff release note generation and vTag prefix -->

- Optionally check `Set as a pre-release` and click `Publish release`.<br /><br />

<!-- TODO Section about annoucement -->
<!--
### Announce the new release on FoODS

- Go to [Teams - FoODS: ODS Mobile iOS]

- Post a message with screenshots of new elements to announce the release.

    As Microsoft Teams does not support pasting Markdown, open the text below in a Markdown editor that produces rich text, copy the rich text and paste it to Microsoft Teams. Finally edit the message to display the emojis and add newlines wherever needed.


    > (rocket) Release X.Y.Z is available!
    >
    > **New components**
    >- C8
    >- C9
    >
    >**New module**
    >- M1
    >
    >(page) [Release note](https://github.com/Orange-OpenSource/ouds-ios/releases/tag/X.Y.Z)
    >
    >(phone) [Demo app]("http://oran.ge/dsapp")
    >
-->

## Prepare Next Release

- Create a branch named `prepare-new-release` to prepare the new release for OUDS iOS version U.V.W.

- Switch to this branch and apply following changes:
    
    - Update the changelog.
    
    Add a section like:
     ```
    \## [Unreleased]\(https://github.com/Orange-OpenSource/ouds-ios/compare/X.Y.Z...develop)
    ```
    
    - Update in Xcode the version of Showcase target to U.V.W (the new version you suppose it will be)
    - Commit your modifications
    - Push them to the repository
    - Create a new pull request named `Update release U.V.W` on GitHub to merge your branch into `develop`.
    - Review and merge this pull request on GitHub.<br /><br />

## About CI/CD with GitLabCI

You can setup in your side a _GitLab CI_ runner which can trigger some _Fastlane_ actions for example each night.
However of course you will need _distribution certificate_ (in .p12 format with private key) and the _release provisioning profile_ in your runner keychain.
Of course you will need also to fill secrets and environement variables.

### GitLab CI pipeline

```yaml
# Software Name: OUDS iOS
# SPDX-FileCopyrightText: Copyright (c) Orange SA
# SPDX-License-Identifier: MIT

# Variables defined by user who wants to start the pipeline
variables:
  ALPHA_BRANCH_TO_BUILD:
    value: ""
    description: "The name of the branch to build as alpha version"
  IOS_ISSUE_NUMBER:
    value: ""
    description: "The number(s) of the issue(s) in GitHub which will be implemented in ALPHA_BRANCH_TO_BUILD and built (e.g.: '42' or seperated with commas '42, 666, 1337')"
  GITHUB_REPOSITORY_NAME:
    value: "ouds-ios"
    description: "The name of the repository to use for builds (default: ouds-ios)"
  GITHUB_ORGANIZATION_NAME:
    value: "Orange-OpenSource"
    description: "The name of the GitHub organization containing the repository to use for builds (default: Orange-OpenSource)"
  BETA_BRANCH_TO_BUILD:
    value: "develop"
    description: "The name of the branch to build as beta version (default: develop)"
  PRODUCTION_BRANCH_TO_BUILD:
    value: "main"
    description: "The name of the branch to build as production version (default: main)"
  PATH_TO_IPA:
    value: "./tmp/ouds-ios/Showcase/build/Showcase.ipa"
    description: "The path to get the IPA for artifacts (default: ./tmp/ouds-ios/Showcase/build/Showcase.ipa)"
  PATH_TO_ZIP:
    value: "./tmp/ouds-ios/Showcase/build/oudsApp.zip"
    description: "The path to get the ZIP for artifacts (default: ./tmp/ouds-ios/Showcase/build/oudsApp.zip)"
  PATH_TO_APP_SOURCES:
    value: "./Showcase"
    description: "The path where the sources to build are (default: ./Showcase)"

# All stages for alpha, beta, production builds and releases
stages:
  - prepare-alpha
  - build-alpha
  - prepare-beta
  - test-beta
  - build-beta
  - prepare-production
  - build-production

# -------------------
# Alpha releases
# Dedicated branch to build on ask, triggered manualy, without Git tags

.common_alpha:
  tags:
    - xcode15.3

.common_alpha_ios:
  extends: .common_alpha
  before_script:
    # Job fails with allowed error code if IOS_APP_COMMIT_SHA environment variable does not exist.
    # This IOS_APP_COMMIT_SHA variable is defined as environement variable in prepare-build-environment.sh
    - if [[ -z "$IOS_APP_COMMIT_SHA" ]]; then exit 81680085; fi
    - ./download_github_repository.sh $GITHUB_ORGANIZATION_NAME $GITHUB_REPOSITORY_NAME $IOS_APP_COMMIT_SHA 
    - cd tmp/$GITHUB_REPOSITORY_NAME
  allow_failure:
    exit_codes: 81680085

prepare_alpha_environment:
  extends: .common_alpha
  stage: prepare-alpha
  script: ./prepare_build_environment.sh $GITHUB_ORGANIZATION_NAME $GITHUB_REPOSITORY_NAME $ALPHA_BRANCH_TO_BUILD
  artifacts:
    reports:
      dotenv: .env
  when: manual    

build_alpha:
  extends: .common_alpha_ios
  stage: build-alpha
  needs: [prepare_alpha_environment]  
  script:
    - pwd
    - bundle install
    - cd "$PATH_TO_APP_SOURCES"
    - bundle exec pod cache clean --all
    - bundle exec pod install --repo-update
    - bundle exec fastlane alpha commitHash:$IOS_APP_COMMIT_SHA issueNumber:"$IOS_ISSUE_NUMBER" # IOS_APP_COMMIT_SHA defined in prepare_alpha_environment phase script
  artifacts:
    expire_in: 1 week
    paths:
      - $PATH_TO_IPA
      - $PATH_TO_ZIP

# -------------------
# Beta releases
# develop branch to build nightly with dedicated tags

.common_beta:
  tags:
    - xcode15.3
  rules:
    - if: $CI_PIPELINE_SOURCE == "schedule" # Only scheduled pipeline needed

.common_beta_ios:
  extends: .common_beta
  before_script:
    # Job fails with allowed error code if IOS_APP_COMMIT_SHA environment variable does not exist.
    # This IOS_APP_COMMIT_SHA variable is defined as environement variable in prepare-build-environment.sh
    - if [[ -z "$IOS_APP_COMMIT_SHA" ]]; then exit 81680085; fi
    - ./download_github_repository.sh $GITHUB_ORGANIZATION_NAME $GITHUB_REPOSITORY_NAME $IOS_APP_COMMIT_SHA 
    - cd tmp/$GITHUB_REPOSITORY_NAME
  allow_failure:
    exit_codes: 81680085

prepare_beta_environment:
  extends: .common_beta
  stage: prepare-beta
  script: ./prepare_build_environment.sh $GITHUB_ORGANIZATION_NAME $GITHUB_REPOSITORY_NAME $BETA_BRANCH_TO_BUILD
  artifacts:
    reports:
      dotenv: .env
  
test_beta_ios:
  extends: .common_beta_ios
  stage: test-beta
  needs: [prepare_beta_environment]  
  script:
    - bundle install
    - cd "$PATH_TO_APP_SOURCES"
    - bundle exec pod cache clean --all
    - bundle exec pod install --repo-update
    - bundle exec fastlane ios test

build_beta_ios:
  extends: .common_beta_ios
  stage: build-beta
  needs: [prepare_beta_environment]  
  script:
    - bundle install
    - cd "$PATH_TO_APP_SOURCES"
    - bundle exec pod cache clean --all
    - bundle exec pod install --repo-update
    - bundle exec fastlane beta commitHash:$IOS_APP_COMMIT_SHA
    # Creates tags dedicated to the CI/CD builds and TestFlight uploads using some commit hash, e.g. the last commit hash.
    # Will use first characters of the hash, but it might not be enough accurate because some commits may start with same value.
  artifacts:
    expire_in: 1 week
    paths:
      - $PATH_TO_IPA
      - $PATH_TO_ZIP

# -------------------
# Production releases
# main branch to build on ask

.common_prod:
  tags:
    - xcode15.3

.common_prod_ios:
  extends: .common_prod
  before_script:
    # Job fails with allowed error code if IOS_APP_COMMIT_SHA environment variable does not exist.
    # This IOS_APP_COMMIT_SHA variable is defined as environement variable in prepare-build-environment.sh
    - if [[ -z "$IOS_APP_COMMIT_SHA" ]]; then exit 81680085; fi
    - ./download_github_repository.sh $GITHUB_ORGANIZATION_NAME $GITHUB_REPOSITORY_NAME $IOS_APP_COMMIT_SHA 
    - cd tmp/$GITHUB_REPOSITORY_NAME
  allow_failure:
    exit_codes: 81680085

prepare_production_environment:
  extends: .common_prod
  stage: prepare-production
  script: ./prepare_build_environment.sh $GITHUB_ORGANIZATION_NAME $GITHUB_REPOSITORY_NAME $PRODUCTION_BRANCH_TO_BUILD
  artifacts:
    reports:
      dotenv: .env
  when: manual      
  
build_production:
  extends: .common_prod_ios
  stage: build-production
  needs: [prepare_production_environment]
  script:
    - bundle install
    - cd "$PATH_TO_APP_SOURCES"
    - bundle exec pod cache clean --all
    - bundle exec pod install
    - bundle exec fastlane prod upload:true
  artifacts:
    expire_in: 1 week
    paths:
      - $PATH_TO_IPA
      - $PATH_TO_ZIP
  when: manual
```

### Prepare environement build Shell script

```shell
#!/usr/bin/env bash
# Software Name: OUDS iOS
# SPDX-FileCopyrightText: Copyright (c) Orange SA
# SPDX-License-Identifier: MIT

set -euxo pipefail

# Exit codes
# ----------

EXIT_STATUS_MISSING_PREREQUISITES=100
EXIT_STATUS_UNDEFINED_ENV_VARIABLES=101
EXIT_STATUS_ERROR_MISSING_TAG_OR_BRANCH=102
EXIT_STATUS_ERROR_NO_ORGANIZATION=200
EXIT_STATUS_ERROR_NO_PROJECT=201
EXIT_STATUS_GITHUB_REQUEST_FAILED=300
EXIT_STATUS_NO_COMMITS=301

# Functions
# ---------

DisplayUsage(){
    echo " Usage: ./prepare_build_environement.sh orga_name repo_name tag_or_branch"
}

Assert(){
  env_var_name=$1
  env_var_value=$2
  if [[ -z $env_var_value ]]; then
    echo "❌ The environment variable '$env_var_name' is undefined"
    exit $EXIT_STATUS_UNDEFINED_ENV_VARIABLES
  else
    echo "✅ The environment variable '$env_var_name' is defined"
  fi
}

Check(){
  env_var_name=$1
  env_var_value=$2
  if [[ -z $env_var_value ]]; then
    echo "⚠️  The environment variable '$env_var_name' is undefined, are you aware of that?"
  else
    echo "✅ The environment variable '$env_var_name' is defined"
  fi
}

# Requirements
# ------------

REQUIREMENTS=(curl jq)  

for someCommand in ${REQUIREMENTS[@]}; do
    command -v "$someCommand" > /dev/null 2>&1
    if [[ $? -ne 0 ]]; then
      >&2 echo "❌ Required '$someCommand' is not installed"
      exit $EXIT_STATUS_MISSING_PREREQUISITES
    fi
done

# Parameters
# ----------

GITHUB_ORGA_NAME=$1
if [[ -z $GITHUB_ORGA_NAME ]]; then
    DisplayUsage
    exit $EXIT_STATUS_ERROR_NO_ORGANIZATION
fi

GITHUB_REPO_NAME=$2
if [[ -z $GITHUB_REPO_NAME ]]; then
    DisplayUsage
    exit $EXIT_STATUS_ERROR_NO_PROJECT
fi

TAG_OR_BRANCH=$3 # e.g. "main" for production, "develop" for beta, other branch name for alpha
if [[ -z $TAG_OR_BRANCH ]]; then
    DisplayUsage
    exit $EXIT_STATUS_ERROR_MISSING_TAG_OR_BRANCH
fi

# Check main environment variables (defined in GitLab project settings)
# ---------------------------------------------------------------------

Assert "OUDS_APPLE_ISSUER_ID" "$OUDS_APPLE_ISSUER_ID"
Assert "OUDS_APPLE_KEY_CONTENT" "$OUDS_APPLE_KEY_CONTENT"
Assert "OUDS_DEVELOPER_BUNDLE_IDENTIFIER" "$OUDS_DEVELOPER_BUNDLE_IDENTIFIER"
Assert "OUDS_MATTERMOST_HOOK_URL" "$OUDS_MATTERMOST_HOOK_URL"
Assert "OUDS_MATTERMOST_HOOK_BOT_NAME" "$OUDS_MATTERMOST_HOOK_BOT_NAME"
Assert "OUDS_MATTERMOST_HOOK_BOT_ICON_URL" "$OUDS_MATTERMOST_HOOK_BOT_ICON_URL"
Assert "OUDS_FASTLANE_APPLE_ID" "$OUDS_FASTLANE_APPLE_ID"
Assert "OUDS_DEVELOPER_PORTAL_TEAM_ID" "$OUDS_DEVELOPER_PORTAL_TEAM_ID"
Assert "OUDS_APPLE_KEY_ID" "$OUDS_APPLE_KEY_ID"
Assert "GITHUB_ACCESS_TOKEN" "$GITHUB_ACCESS_TOKEN"

Check "IOS_ISSUE_NUMBER" "$IOS_ISSUE_NUMBER"

# Get last commit hash
# --------------------

> .env

echo "Preparing environment..."
echo "Tag or branch to pull sources from is: '$TAG_OR_BRANCH'"

headers=(-L -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $GITHUB_ACCESS_TOKEN" -H "X-GitHub-Api-Version: 2022-11-28")
commits=$(curl "${headers[@]}"  https://api.github.com/repos/$GITHUB_ORGA_NAME/$GITHUB_REPO_NAME/commits\?per_page\=100\&sha\=$TAG_OR_BRANCH)
release_commit_sha=$(echo $commits | jq -r 'try(first | .sha)')

if [[ -z $release_commit_sha ]]; then
  echo "❌ Could not find any commit in qualif '$TAG_OR_BRANCH' on GitHub '$GITHUB_REPO_NAME' repository."
  exit $EXIT_STATUS_NO_COMMITS
else 
  echo "✅ Release commit to use is '$release_commit_sha'"
fi

echo "IOS_APP_COMMIT_SHA=$release_commit_sha" >> .env # Store environment variables for GitLab jobs
IOS_APP_COMMIT_SHA="$release_commit_sha"
export IOS_APP_COMMIT_SHA

echo "✅ It seems all environment variables are defined, let's continue"
```

### GitHub download Shell script

```shell
#!/usr/bin/env bash
# Software Name: OUDS iOS
# SPDX-FileCopyrightText: Copyright (c) Orange SA
# SPDX-License-Identifier: MIT

set -uxo pipefail

# Exit codes
# ----------

EXIT_STATUS_ERROR_NO_ORGANIZATION=1
EXIT_STATUS_ERROR_NO_PROJECT=2
EXIT_STATUS_ERROR_NO_SHA1=3
EXIT_STATUS_GITHUB_REQUEST_FAILED=4

# Utils
# ------

DisplayUsage(){
    echo " Usage: ./download_github_repository.sh orga_name repo_name commit_sha1"
}

# Parameters
# ----------

GITHUB_ORGA_NAME=$1
if [[ -z $GITHUB_ORGA_NAME ]]; then
    DisplayUsage
    exit $EXIT_STATUS_ERROR_NO_ORGANIZATION
fi

GITHUB_REPO_NAME=$2
if [[ -z $GITHUB_REPO_NAME ]]; then
    DisplayUsage
    exit $EXIT_STATUS_ERROR_NO_PROJECT
fi

COMMIT_SHA=$3
if [[ -z $COMMIT_SHA ]]; then
    DisplayUsage
    exit $EXIT_STATUS_ERROR_NO_SHA1
fi

# Business logic
# --------------

echo "Downloading $GITHUB_ORGA_NAME/$GITHUB_REPO_NAME repository at $COMMIT_SHA"

TMP_DIR_PATH="tmp"
if [ -d $TMP_DIR_PATH ]; then
    echo "Delete old temp directory"
    rm -rf $TMP_DIR_PATH
fi

# No need to clone the Git repository which can be quite heavy.
# Using also SSH implies to have proxy settings allowing this protocol and to use private key
# but some developers of OUDS iOS are GitHub organization admins, thus their private key are much to powerfull
# and their use is too hazardous

echo "Create new temp directory"
mkdir "$TMP_DIR_PATH"

ZIP_FILE_PATH="$TMP_DIR_PATH/$GITHUB_REPO_NAME.zip"
HEADERS=(-L -H "Accept: application/vnd.github+json" -H "Authorization: Bearer $GITHUB_ACCESS_TOKEN" -H "X-GitHub-Api-Version: 2022-11-28")
echo "Download version..."
curlReturn=$(curl "${HEADERS[@]}" "https://api.github.com/repos/"$GITHUB_ORGA_NAME"/"$GITHUB_REPO_NAME"/zipball/"$COMMIT_SHA"" --output "$ZIP_FILE_PATH" 2>&1)
if [ $? -ne 0 ] ; then
   echo "Error with GitHub request: '$curlReturn'"
   exit $EXIT_STATUS_GITHUB_REQUEST_FAILED
fi

echo "Unzip version"
yes | unzip "$ZIP_FILE_PATH" -d $TMP_DIR_PATH
echo "Unzip completed ($?)"

# Rename for future steps
echo "Moving items..."
mv $TMP_DIR_PATH/"$GITHUB_ORGA_NAME"-"$GITHUB_REPO_NAME"-* "$TMP_DIR_PATH/$GITHUB_REPO_NAME"

echo "✅ It seems the sources have been downloaded and extracted successfully!"
```

## How it works

### Alpha builds

The *alpha* builds must be created using a manual trigger of our internal pipeline. It needs a <a href="./images/build-alpha-GitHub-branch-commit.png">branch</a> to pull with sources to builds, and some issue(s) number(s). The last commit hash will be computed and used. A first step will prepare the build then a second step will build and upload the app.

The *alpha* build then will be uploaded <a href="./images/build-alpha-TestFlight-console.png">automatically to _TestFlight_</a> and <a href="./images.build-alpha-TestFlight-app.jpeg">available for a team</a> defined in the `fastlane/Appfile` (here *alpha-team*).

Both our <a href="./images/build-alpha-Mattermost-details.png">_Mattermost_ hook</a> and the _Fastlane_ lanes produce details about the build like <a href="./images/build-alpha-GitLabCI-meta_details.png">version, issues</a> and <a href="./images/build-alpha-GitLabCI-build_number.png">build number</a>.

There are also in the app <a href="./images/build-alpha-in_app.jpeg">some extra fields</a> defined in the app _Info.plist_ through _Fastlane_ and _GitLab CI_ showing the app version, its build number, the build type (DEBUG for local builds, ALPHA for alpha release, BETA for beta release, PROD for production release) and the build details (issues numbers). The <a href="./images/build-alpha-display_name.jpeg">display name</a> will be modified too.
