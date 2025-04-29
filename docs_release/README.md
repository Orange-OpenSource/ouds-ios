# OUDS iOS release guide

This file lists all the steps to follow when releasing a new version of OUDS iOS.

- [Prepare release](#prepare-release)
- [Release](#release)
  * [Publish release to GitHub](#publish-release-to-github)
- [Prepare Next Release](#prepare-next-release)
- [About documentation](#about-documentation)

## Prepare release

- Create a branch named `prepare-release` to prepare the new release for OUDS iOS version X.Y.Z.

    ```shell
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
    where P.Q.R is the previous version tag, X.Y.Z the version we are releasing, and YYYY-MM-dd the date.

    - Ensure the marketing version defined in Xcode is updated with the new X.Y.Z

- Verify the changes mentioned above, then commit and push.

- Create a new pull request named `Prepare release X.Y.Z` on GitHub to merge your branch into `develop`.

- Review and merge this pull request on GitHub using **squash and merge commits strategy**.<br /><br />

## Release

- Create a new pull request named `Release X.Y.Z` on GitHub to merge `develop` into `main`. Add in the description the CHANGELOG for this new version. Thus GitHub will automatically make the links and display the PR in the mentioned issues.

- Review and merge this pull request on GitHub. The merge strategy must be a **simple merge without squash of commits**, i.e. "create a merge commit". In fact rebase should be used to align feature branches with default one, and squash should be used when needed for work branches. In the _merge commit_ message add the changelog, the authors and the details. Thus GitHub makes links automatically between commits, PR and GitHub issues. To do that, copy/paste the content of the changelog (after the version line) and uncomment (i.e. remove # symbols) lines. Thus if in the commit message body any issue is referenced, it will appear in the associated issue. Do not forget also to add people as co-authors if needed. **Remember, do not squash nor rebase but only merge commit**.

Below is an example of what should be a merge commit in `main` branch for a release (ignore of course // lines, see [this commit for example](https://github.com/Orange-OpenSource/ouds-ios/commit/98640b4b63037c2780128f41ceba5b896763b94f)):

```text
Version 0.2.0 (#113) // <--- Commit title, #113 is PR nummber

// Below is commit body, keep an empty line
Release of version 0.2.0
See below the full CHANGELOG details.

// Keep also an empty line above
// And copy/paste changelog without #
Added:
- [Tests] Add UI regression tests using snapshot comparisons with *swift-snapshot-testing* tool ([#78](#78))
- [DesignToolbox] Display fake components for elevation rendering tests

Changed:
- [Library] Split raws, semantics and components tokens definitions and also values, composites and type aliases
- [DesignToolbox] Improve Fastlane alpha build notifications

Removed:
- [Library] Remove Z Index tokens for elevations ([#109](#109))

Fixed:
- [Library] Fix some typos in documentation ([#89](#89))

// Add in co authors anyone working on the commits being merged, add the ones who contributed (copy-paste if too lazy, use the ones you need)
Co-authored-by: Benoit Suzanne <benoit.suzanne@orange.com>
Co-authored-by: Pierre-Yves Lapersonne <pierreyves.lapersonne@orange.com>
Co-authored-by: Ludovic Pinel <ludovic.pinel@orange.com>
Co-authored-by: Tayeb Sedraia <tayeb.sedraia@orange.com>
Co-authored-by: boosted-bot <boosted-bot@users.noreply.github.com>
```

You can also [look inside this commit](https://github.com/Orange-OpenSource/ouds-ios/commit/5ce9b68aa03304fef91fc45ef43a379b4f22f98b) for example.

- Generate documentation: from Xcode build the documentation, export each doccarchive in your downlaods folder (9 modules), then run the script ; it will update online version and generate a ZIP file in _/tmp_
    ```shell
    ./generateWebDocumentation.sh --libversion=X.Y.Z --usegit
    ```
    
- Launch a job on your runner to build the demo application

- Or use _Fastlane_ command:
    ```shell
    # For comments on issues and tags management
    export GITHUB_ACCESS_TOKEN=<your_github_personal_token>

    # Variables for upload to TestFlight
    export OUDS_APPLE_KEY_ID=<your_key_ID>
    export OUDS_APPLE_ISSUER_ID=<your_issuer_ID>
    export OUDS_APPLE_KEY_CONTENT=<your_key_content>
    
    # Certificates and provisioning profiles
    export OUDS_BUILD_CERTIFICATE_BASE64=<certificate_base64_content>
    export OUDS_BUILD_PROVISIONING_PROFILE_BASE64=<prov_profile_base64_content>
    export OUDS_P12_PASSWORD=<password_of_certificate>
    export OUDS_KEYCHAIN_PASSWORD=<password_for_keychain>

    # Variables for application signing
    export OUDS_DEVELOPER_BUNDLE_IDENTIFIER=<your_app_identifier>
    export OUDS_FASTLANE_APPLE_ID=<your_apple_email_address>
    export OUDS_DEVELOPER_PORTAL_TEAM_ID=<your_developer_portal_team_ID>
    
    # For Mattermost notifications
    export OUDS_MATTERMOST_HOOK_BOT_ICON_URL=<hook_bot_icon>
    export OUDS_MATTERMOST_HOOK_BOT_NAME=<hook_bot_name>
    export OUDS_MATTERMOST_HOOK_URL=<hook_url>

    # Variables for internal portal upload (for in the end App Store)
    export OUDS_UPLOAD_STORE_URL=<URL_wih_details_for_upload>

    bundle exec fastlane prod upload:true
    # set "upload" to true if you want to upload app to internal portal, false otherwise.
    ```

### Publish release to GitHub

- Go to [GitHub Releases](https://github.com/Orange-OpenSource/ouds-ios/releases).

- Click on `Draft a new release`.

- Create a new tag X.Y.Z (following semantic versioning principles)

- Add release notes and verify using the preview tab. Use *git-cliff* to build the release note to copy/paste in the release description

    ```shell
    # Where X is the previous tag and Y the new freshly created tag or HEAD
    # Run in main branch of course.
    git-cliff --config .github/cliff.toml --output RELEASE_NOTE.md X..Y
    ```

- Optionally check `Set as a pre-release` and click `Publish release`. Create a discussion from this release four announcements

- Define the ZIP archive of the documentation by compressing all doccarchives files into one ZIP, and add it in artefact

- Download the GitHub Page branch content as zip, and upload in artefact

- Clone the [wiki](https://github.com/Orange-OpenSource/ouds-ios/wiki) (available at https://github.com/Orange-OpenSource/ouds-ios.wiki.git), compress its content as ZIP, and place the ZIP in artefacts

- From the GitLab CI pipeline job which made the production release, get the artifacts and put it in the release.

- Close the previous release discussion, lock and unpin it. Pin the new discussion for the release, and add in comments the sprint number and the app details in production mode. [This is an exemple of a release discussion](https://github.com/Orange-OpenSource/ouds-ios/discussions/606) and [a detailed comment](https://github.com/Orange-OpenSource/ouds-ios/discussions/358#discussioncomment-11608399).

A bit lost? Quite simple: [look this release and do the same thing](https://github.com/Orange-OpenSource/ouds-ios/releases/tag/0.13.0).

## Prepare Next Release

- Create a branch named `prepare-new-release` to prepare the new release for OUDS iOS version U.V.W.

- Switch to this branch and apply following changes:
    
    - Update the changelog.
    
    Add a section like:
     ```
    \## [Unreleased]\(https://github.com/Orange-OpenSource/ouds-ios/compare/X.Y.Z...develop)
    ```
    
    - Update in Xcode the version of DesignToolbox target to U.V.W (the new version you suppose it will be) and increment build number
    - Commit your modifications
    - Push them to the repository
    - Create a new pull request named `Update release U.V.W` on GitHub to merge your branch into `develop` 
    - Review and merge this pull request on GitHub **using merge + squash strategy**<br /><br />

## About documentation

The documentation tool in use is [Swift DocC](https://www.swift.org/documentation/docc/) ; we use the [swift-docc-plugin](https://github.com/swiftlang/swift-docc-plugin) to produce documentation from the codebase and generate HTML assets for static websites.
Of course the doccarchives can be created from Xcode.

To update the online documentation run the script `generateWebDocumentation.sh`. The `swift package generate-documentation` will be called, assets generated, and everything sent to GitHub Pages (if *--usegit* option used).

```shell
# To show the help:
./generateWebDocumentation.sh --help

# To build the doc and push to GitHub:
# VERSION will be added in the Git commits
# --usegit make the script upload sources to GitHub
./generateWebDocumentation.sh --libversion=VERSION --usegit

# If you don't want the ZIP to be computed:
./generateWebDocumentation.sh --libversion=VERSION --usegit --nozip
```

Keep in mind everything is stored in _/tmp_ folder with the execution timestamp, thus if you asked for a ZIP archive or want to get the generated files, look for files named "ouds-docs".

The plugin produces a lot of files, a lot. For example for our v0.14.0, more than 27,000 files have been created for a ZIP archive of about +120 MB.
Thus, keeping all versions of the documentation is a non-sense, no one will read it and it will increase the size of the branch in our VCS tool, consuming a lot of bandwidth, and reaching limits of Git to handle large amounts of file. We would like to avoid to force developers to define a specific Git configuration to handle such massive branch.

We prefer to build ZIP documentation and _Xcode_ _doccarchives_ to add as artifacts of releases.
Thus, the online version of the documentation is for the last release, and each release in GitHub contains _doccarchive_ files generated through _Xcode_ and ZIP of HTML files picked from the *gh-pages*.