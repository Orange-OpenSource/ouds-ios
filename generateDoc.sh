#!/bin/bash
#
# Software Name: OUDS iOS
# SPDX-FileCopyrightText: Copyright (c) Orange SA
# SPDX-License-Identifier: MIT
#
# This software is distributed under the MIT license,
# the text of which is available at https://opensource.org/license/MIT/
# or see the "LICENSE" file for more details.
#
# Authors: See CONTRIBUTORS.txt
# Software description: A SwiftUI components library with code examples for Orange Unified Design System
#

# Controls on script
set -euo pipefail

# Configuration
# -------------

# The Swift Package targets to build documentation of
# Of course if your project is not compliant with Swift Package and DocC don't use this tool
TARGETS="OUDS \
        OUDSThemesSosh \
        OUDSThemesInverse \
        OUDSThemesOrange \
        OUDSTokensRaw \
        OUDSTokensSemantic \
        OUDSTokensComponent \
        OUDSComponents \
        OUDSModules \
        OUDSFoundations"

# Services pages (like GitHub Pages) custom subdomain for the CNAME, don't forget to verify it in organization side for security reasons!
SERVICE_PAGES_DOMAIN="ios.unified-design-system.orange.com"

# Some HTML fragments to adf in the HTML global page index.html
HTML_TITLE="OUDS iOS Swift Documentation"
HTML_H1="OUDS iOS Swift Documentation"
HTML_H2="iOS SwiftUI implementation of the Unified Design System of Orange"
HTML_PROJECT_URL="https://github.com/Orange-OpenSource/ouds-ios"
HTML_PROJECT_COPYRIGHT="Orange SA"

# The name of the Git branch hosting the documentation (e.g. GitHub Pages branch defined in repository)
SERVICE_PAGES_BRANCH="gh-pages"

# Path where the documentation will be temporary
DOCS_DIRECTORY="./docs"

# The generated name of the ZIP containing the generated sources of documentation (for archive)
timestamp=$(date +%s)
DOCUMENTATION_ZIP_NAME="documentation-$timestamp.zip"
DOCUMENTATION_ZIP_LOCATION="/tmp/$DOCUMENTATION_ZIP_NAME"

# Errors management
# -----------------

EXIT_OK=0
EXIT_ERROR_SIG=1
EXIT_NOT_GIT_REPO=2
EXIT_BAD_PARAMETER=3

on_error_signal() {
    _ "❌  An error occurred with command '$BASH_COMMAND'. Exits. ($EXIT_ERROR_SIG)"
    if [[ $use_git -eq 1 ]]; then
        clean_repo
    fi
    exit $EXIT_ERROR_SIG
}

trap 'on_error_signal' ERR
trap 'on_error_signal' SIGINT
trap 'on_error_signal' SIGTERM
trap 'on_error_signal' SIGABRT

# Functions
# ---------

_() {
    local message="$1"
    local is_error="${2:-false}"
    local prefix="🍊 "
    
    if [[ "$is_error" == "true" ]]; then
        echo "${prefix}❌ ERROR: $message" >&2
    else
        echo "${prefix}$message"
    fi
}

clean_repo() {
    _ "🧹 Cleaning Git repository"
    git reset --hard
    git clean -fd
}

show_help() {
    echo "This script will use swift-docc-plugin to build HTML documentation of the OUDS iOS Swift Package"
    echo "It can also update the Git repository."
    echo -e "Usage: $0 [--help] --libversion=VERSION [--usegit | --nozip | --nokeep]\n"
    echo "Options:"
    echo "  --help                Shows this help message."
    echo "  --libversion=VERSION  Specifies the library version to include in HTML page (mandatory)."
    echo "  --usegit              Specifies to version documentation in the current Git repository and upload (default it does not, only local)."
    echo "  --nozip               Specifies the ZIP archive of the documentation must not be done (by default it is)."
}

# Step 0 - Prerequisites checks
# -----------------------------

lib_version=""
use_git=0
no_zip=0
keep_generated=1

# Check for command-line arguments
for arg in "$@"; do
    case "$arg" in
        --help)
            show_help
            exit $EXIT_OK
            ;;
        --libversion=*)
            lib_version="${arg#*=}"
            _ "✔️ OK, library version to know is '$lib_version'"
            ;;
        --usegit)
            use_git=1
            ;;
        --nozip)
            no_zip=1
            ;;          
        *)
            _ "Unknown parameter: $arg. Exits. ($EXIT_BAD_PARAMETER)" true
            exit $EXIT_BAD_PARAMETER
            ;;
    esac
done

if [[ -z "$lib_version" ]]; then
    _ "Parameter --libversion is mandatory. Exits. ($EXIT_BAD_PARAMETER)" true
    exit $EXIT_BAD_PARAMETER
fi

if [[ $use_git -eq 1 ]]; then
    _ "✔️ OK, Git will be used"
else
    _ "✔️ OK, Git will NOT be used"
fi

if [[ $no_zip -eq 1 ]]; then
    _ "✔️ OK, no ZIP archive will be done"
else
    _ "✔️ OK, a ZIP archive will be created"
fi       

if [[ "$use_git" -eq 0 && "$no_zip" -eq 1 ]]; then
    _ "🥴 WARNING: What do you use this script for? You should at least save the doc in Git repository or in ZIP file"
fi

# Step 1 - Git setup (if relevant)
# --------------------------------

start_time=$(date +%s)

if [[ $use_git -eq 1 ]]; then
    if [ -d ".git" ]; then
        _ "✅ This is a Git repository. Please ensure the credentials you need are ready (SSH, HTTPS, GPG, etc.)"
        current_branch=$(git rev-parse --abbrev-ref HEAD)
        _ "🔨 Current Git branch is '$current_branch'"
        clean_repo # To get rid of unversioned files etc.
    else
        _ "This is not a Git repository. Exits. ($EXIT_NOT_GIT_REPO)" true
        exit $EXIT_NOT_GIT_REPO
    fi
fi

_ "👉 Creating documentation folder..."
mkdir -p "$DOCS_DIRECTORY"
_ "👍 Documention folder created at '$DOCS_DIRECTORY'!"

# Step 1 - For each target, build the DocC documentation
# ------------------------------------------------------

# WARNING
# The version of swift-docc-plugin (https://github.com/swiftlang/swift-docc-plugin) we use (here 1.4.2 according to the Package.resolved file)
# does not seem t manage very weeel Swift Packages with several targets.
# Consider using this version of the tool or submit an issue / pull request for updates to https://github.com/Orange-OpenSource/ouds-ios
# (╯°□°)╯︵ ┻━┻

_ "👉 Generating docs..."

for target in ${TARGETS}
do
    _ "👉 Generating docs for $target..."
    swift package --allow-writing-to-directory "$target-docs" generate-documentation  --disable-indexing --transform-for-static-hosting --output-path "$target-docs" --target "$target"
    
    cp -r $target-docs/* $DOCS_DIRECTORY
    modified_target=$(echo $target | tr '-' '_' | tr '[:upper:]' '[:lower:]')
    cp -r $target-docs/index/index.json "$DOCS_DIRECTORY/index/$modified_target.json"
    _ "👍 Docs generated for $target!"
done

# Step 2 - Add CNAME file for GitHub Pages
# ----------------------------------------

if [[ $use_git -eq 1 ]]; then
    _ "👉 Updating CNAME file"
    echo "$SERVICE_PAGES_DOMAIN" > "$DOCS_DIRECTORY/CNAME"
    _ "👍 Updated!"
fi

# Step 3 - Update global HTML file
# --------------------------------

# This is only to build a global index.html file referencing all other targets index.html files

_ "👉 Updating index.html..."

echo "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>$HTML_TITLE</title><style>body{font-family:Arial,sans-serif;line-height:1.6;margin:0;padding:0;background-color:#000000;color:#fff;}header{background-color:#424242;color:white;padding:20px;text-align:center;}main{padding:20px;}h1{margin:0;}ol{padding-left:20px;}li{margin:10px 0;}a{color:#06f;text-decoration:none;}a:hover{text-decoration:underline;}footer{text-align:center;padding:10px;background-color:#000000;border-top:1px solid #e0e0e0;}</style></head><body><header><h1>$HTML_H1</h1></header><main>" > $DOCS_DIRECTORY/index.html
echo "<h2>$HTML_H2</h2>" >> $DOCS_DIRECTORY/index.html
echo "<h3>Version v$lib_version</h3>" >> $DOCS_DIRECTORY/index.html
echo "<h4>All targets of the Swift Package are listed below</h4>" >> $DOCS_DIRECTORY/index.html
echo "<ol>" >> $DOCS_DIRECTORY/index.html
for target in ${TARGETS}
do
    cp -R "$target-docs/data/documentation/"* "$DOCS_DIRECTORY/data/documentation/"
    cp -R "$target-docs/documentation/"* "$DOCS_DIRECTORY/documentation/"
    rm -r "$target-docs"
    modified_target=$(echo "$target" | tr '-' '_' | tr '[:upper:]' '[:lower:]')
    echo "<li><a href=\"./documentation/$modified_target\">$target</a></li>" >> $DOCS_DIRECTORY/index.html
done
echo "</ol></main>" >> $DOCS_DIRECTORY/index.html
echo "<footer><p>Find the source code on <a href=\"$HTML_PROJECT_URL\">GitHub</a></p>" >> $DOCS_DIRECTORY/index.html
echo "<p>&copy; $(date +%Y) $HTML_PROJECT_COPYRIGHT</p><p>Documentation build n°$timestamp</p></footer></body></html>" >> $DOCS_DIRECTORY/index.html

_ "👍 index.html updated!"

files_count=`find $DOCS_DIRECTORY -type f | wc -l | xargs`

# Step 4a - Checkout to service pages dedicated branch (if relevant)
# ------------------------------------------------------------------

# When the files have been generated, stash them, change branch, unstash, add, commit, push then clean

if [[ $use_git -eq 1 ]]; then
    _ "👉 Versioning documentation in service pages branch (it can take a lot of time)..."

    _ "🔨 Stashing things"
    git stash -u

    _ "🔨 Checkout service pages branch, align with remote"

    # Check if the local branch exists
    if git show-ref --verify --quiet refs/heads/"$SERVICE_PAGES_BRANCH"; then
        _ "🔨 Checking out local branch '$SERVICE_PAGES_BRANCH'"
        git checkout "$SERVICE_PAGES_BRANCH"
        git reset --hard origin/$SERVICE_PAGES_BRANCH # Ensure to be aligned with remote version
    else
        _ "🔨 Local branch '$SERVICE_PAGES_BRANCH' does not exist. Checking out from remote."
        git fetch origin
        git checkout -b "$SERVICE_PAGES_BRANCH" origin/"$SERVICE_PAGES_BRANCH"
    fi

    _ "🔨 Unstashing things"
    git stash apply

    _ "🔨 Adding things (~ $files_count files)"
    git add "$DOCS_DIRECTORY"

    _ "🔨 Committing things (be ready if passwords / passphrases are asked)"
    commit_message=$(printf "doc: update DocC documentation for version v%s (%timestamp)\n\nUpdate documentation for GitHub pages of version v%s of OUDS iOS library (build timestamp %s)\n\nWARNING: This is an automatic commit 🤖" "$lib_version" "$timestamp" "$lib_version" "$timestamp")
    git commit -m "$commit_message"

    _ "🔨 Pushing things"
    git push origin "$SERVICE_PAGES_BRANCH"

    _ "🔨 Cleaning stashes"
    git stash clear

else
    _ "👍 Ok, just keep documentation here"
fi

# Step 5 - Compress ZIP (if relevant)
# -----------------------------------

# ZIP action must be done before reseting the Git workspace (otherwise everything will be wiped out)
if [[ $no_zip -eq 0 ]]; then
    _ "👉 Zipping documentation folder"
    zip -r "$DOCUMENTATION_ZIP_LOCATION" "$DOCS_DIRECTORY"/*
    size_in_byte=`du "$DOCUMENTATION_ZIP_LOCATION" | cut -f1`
    _ "👍 Documentation ZIP available at $DOCUMENTATION_ZIP_LOCATION ($size_in_byte bytes)"
fi

# Step 4b - Resume work on Git branch (if relevant)
# -------------------------------------------------

if [[ $use_git -eq 1 ]]; then
    commit_hash=`git rev-parse HEAD`

    _ "🔨 Going back to previous Git branch"
    git checkout "$current_branch"
    _ "👍 Pushed with commit '$commit_hash'"
fi

# Step 6 - Metrics and conclusion
# -------------------------------

end_time=$(date +%s)
elapsed_time=$(( end_time - start_time ))
elapsed_time_minutes=$(( elapsed_time / 60 ))
elapsed_time_seconds=$(( elapsed_time % 60 ))

_ "⌛ Elapsed time: ${elapsed_time_minutes} minutes and ${elapsed_time_seconds} seconds"
_ "👋 Bye!"

exit $EXIT_OK

# In case of performances issues due to the large amount of files in the Git repository:
#   run "git clean -fd ; git reset --hard ; rm -rf .build"
#   Or use "git prune"
#   Or reclone the repository