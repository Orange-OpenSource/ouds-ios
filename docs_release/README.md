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
    where P.Q.R is the previous version tag, X.Y.Z the version we are releasing.

    <!-- TODO Add AppNews file details -->

    - Ensure the marketing version defined in Xcode is updated with the new X.Y.Z
    <!-- TODO Add details about docs -->
    <!-- - Update the version precised in *home_content* file -->
    <!-- - Archive the documentation in `docs/X.Y.Z`. -->
    <!-- - Update Jekyll configuration files.<br /><br /> -->

- Verify the changes mentioned above, then commit and push.
    ```shell
    git add --all                           # Or make more fine add of course if you want
    git commit -s -m $'your commit message' # For example "Prepare version X.Y.Z", -S for GPG sign is allowed but not mandatory
    git push origin prepare-release
    ```

- Create a new pull request named `Prepare release X.Y.Z` on GitHub to merge your branch into `develop`.

- Review and merge this pull request on GitHub using squash and merge commits strategy.<br /><br />

## Release

- Create a new pull request named `Release X.Y.Z` on GitHub to merge `develop` into `main`. You can add in the description the CHANGELOG for this new version. Thus GitHub will automatically make the links and display the PR in the mentioned issues.

- Review and merge this pull request on GitHub. The merge strategy must be a **simple merge without squash of commits**, i.e. "create a merge commit". Rebase should be used to align feature branches with default one, and squash should be used when needed for work branches. The _merge commit_ can be defined so as to bring details about the merge and make links automatically with GitHub issues. To do that, you can copy/paste the content of the changelog (after the version line) and uncomment (i.e. remove # symbols) lines. Thus if in the commit message body any issue is referenced, it will appear in the associated issue. Do not forget also to add people as co-authors if needed. **Remember, do not squash nor rebase but only merge commit**/

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

- Generate documentation: from Xcode build the doc, export each doccarchive, then run the script ; it will update online version and generate a ZIP file in _/tmp_
    ```shell
    ./uploadWebDoc.sh --libversion=X.Y.Z --usegit
    # --usegit means updating GitHub Pages branch
    # Add --nozip if you don't want a ZIP file
    # X.Y.Z here is just the version number to display in main index.html page, replace value of course
    ```
    
- Launch a job on your runner to build the demo application

- Or use _Fastlane_ command:
    ```shell
    # Variables for application signing
    export OUDS_DEVELOPER_BUNDLE_IDENTIFIER=<your_app_identifier>
    export OUDS_FASTLANE_APPLE_ID=<your_apple_email_address>
    export OUDS_DEVELOPER_PORTAL_TEAM_ID=<your_developer_portal_team_ID>
    
    # Variables for upload to TestFlight
    export OUDS_APPLE_KEY_ID = <your_key_ID>
    export OUDS_APPLE_ISSUER_ID = <your_issuer_ID>
    export OUDS_APPLE_KEY_CONTENT = <your_key_content>
    
    # Variables for internal portal upload (for in the end App Store)
    export OUDS_UPLOAD_STORE_URL = <URL_wih_details_for_upload>

    bundle exec fastlane prod upload:true
    # set "upload" to true if you want to upload app to internal portal, false otherwise.
    ```

### Publish release to GitHub

- Go to [GitHub Releases](https://github.com/Orange-OpenSource/ouds-ios/releases).

- Click on `Draft a new release`.

    <!-- TODO Update screenshot -->
    <!-- ![Edit GitHub release](images/github_release_01.png) -->

- Create a new tag X.Y.Z

    <!-- TODO Update screenshot -->
    <!-- ![Create tag](images/github_release_02.png) -->

- Add release notes and verify using the preview tab.
    
- Optionally check `Set as a pre-release` and click `Publish release`. You can also create a disucssion from this release.

- Do not forget to update the documentation using `uploadWebDoc.sh` script. It will let a ZIP file of the documentation in */tmp* folder ; get this file and add it as release artifact, or if you want just download the sources from GitHub on *gh-pages* branch. You should also through Xcode build the documentation (_Product > Build Documentation_) and export each documentation catalog as documentation archive (doccarchive) (_Right click on catalog > Export_), compress all these files in one ZIP archive (GitHub consider them as empty so won't accept them for upload) and upload as artifact. In few words, put in release artifacts all the doccarchives in a ZIP in one side, and the HTML merged version in the other side.

- Clone the [wiki](https://github.com/Orange-OpenSource/ouds-ios/wiki) (available at https://github.com/Orange-OpenSource/ouds-ios.wiki.git), compress its content as ZIP, and place the ZIP in release artifacts

- From the GitLab CI pipeline job which made the production release, get the artifacts and put it in the release.

- You can use if you want *git-cliff* to build the release not to copy/paste in the release description

```shell
# Where X is the previous tag and Y the new freshly created tag or HEAD
# Run in main branch of course.
git-cliff --config .github/cliff.toml --output RELEASE_NOTE.md X..Y
```

- You can close the previous release dicussion, lock and unpin it. You should also pin the new discussion for the release, and add in comments the sprint number and the app details in production mode. [This is an excemple of a release discussion](https://github.com/Orange-OpenSource/ouds-ios/discussions/358) and [a detailed comment](https://github.com/Orange-OpenSource/ouds-ios/discussions/358#discussioncomment-11608399).

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

The documentation tool in use is [Swift DocC](https://www.swift.org/documentation/docc/) ; we try as best as we can to use these conventions in our source code, and use also _DocC_ catalogs so as to let _Xcode_ build the _doccarchives_ and render the documentation in the Apple fashion.
The documentation should be updated during a release ; to do that a script has been designed to update the _GitHub Pages_ dedicated to the documentation in the OUDS iOS repository.
However, because we faced several issues with `swift package`, `xcodebuild` and `xcrun docc` commands and were not able yet to use them to generate the _doccarchives_ and the HTML pages, a manual step must be done for the update. For further details, see [#95](https://github.com/Orange-OpenSource/ouds-ios/issues/95) and [#168](https://github.com/Orange-OpenSource/ouds-ios/issues/168) (in few words: not possible to manage easily multiple targets in Swift Package, _UIKit_ not supported, no unified _doccarchive_ for several targets).

First, you will have to use _Xcode_ to build the documentation (_Product > Build Documentation_) which will open the documentation viewer.
Then, **for each documentation catalog of the Swift package, i.e. for each target**, export the _doccarchive_ **in your _Downloads_ folder**.
Today you will have to do this operation for the _doccarchives_ *OUDS*, *OUDSComponents*, *OUDSFoundations*, *OUDSModules*, *OUDSThemesInverse*, *OUDSThemesOrange*, *OUDSTokensComponent*, *OUDSTokenSemantic* and *OUDSTokenRaw*.

Then, you will have to run the script `uploadWebDoc.sh` which will use these _doccarchives_, get their HTML content and upload the GitHub Pages branch.

```shell
# To show the help:
./uploadWebDoc.sh --help

# To build the doc and push to GitHub:
# VERSION will be added in the main page
# --usegit make the script upload sources to GitHub
./uploadWebDoc.sh --libversion=VERSION --usegit

# If you don't want the ZIP to be computed:
./uploadWebDoc.sh --libversion=VERSION --usegit --nozip
```

Keep in mind everything is stored in _/tmp_ folder with the execution timestamp, thus if you asked for a ZIP archive or want to get the generated files, look for files named "ouds-docs".

The plugin produces a lot of files, a lot. For example for our v0.1.0, more than 6,000 files have been created for a ZIP archive of about 17 MB.
Thus, keeping all versions of the documentation is a non-sense, no one will read it and it will increase the size of the branch in our VCS tool, consuming a lot of bandwidth, and reaching limits of Git to handle large amounts of file. We would like to avoid to force developers to define a specific Git configuration to handle such massive branch.

We prefer to build ZIP documentation and _Xcode_ _doccarchives_ to add as artifacts of releases.
Thus, the online version of the documentation is for the last release, and each release in GitHub contains _doccarchive_ files generated through _Xcode_ and ZIP of HTML files picked from the *gh-pages*.

You may see also the *merge-json-indexed.py* Python script: this tool is sued by the mentioned Shell script to merge easily all *index.json* files of all _doccarchives_ so as to produce one single and unique *index.json* file used mainly for the side bar menu and the highlight bar.
