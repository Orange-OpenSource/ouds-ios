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

# GitHub Pages custom subdomain, don't forget to verify it in organization side!
GH_PAGES_DOMAIN="ios.unified-design-system.orange.com"

# Some HTML fragments to ad in the HTML global page index.html
HTML_TITLE="OUDS iOS Swift Documentation"
HTML_H1="OUDS iOS Swift Documentation"
HTML_H2="iOS SwiftUI implementation of the Unified Design System of Orange"
HTML_GITHUB_PROJECT_URL="https://github.com/Orange-OpenSource/ouds-ios"
HTML_PROJECT_COPYRIGHT="Orange SA"

# The name of the Git branch hosting GitHub Pages service
GH_PAGES_BRANCH="gh-pages"

# If something wrong occurs, fallback to this branch to let the repo is a clean state
GIT_FALLBACK_BRANCH="develop"

# Path where the documentation will be
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
    echo "🍊❌  An error occurred. Exits. ($EXIT_ERROR_SIG)"
    clean_repo
    echo "🍊❌  Swiching to branch '$GIT_FALLBACK_BRANCH'"
    git checkout "$GIT_FALLBACK_BRANCH"
    exit $EXIT_ERROR_SIG
}

trap 'on_error_signal' ERR
trap 'on_error_signal' SIGINT
trap 'on_error_signal' SIGTERM
trap 'on_error_signal' SIGABRT

# Functions
# ---------

echo2() {
    local message="$1"
    local is_error="${2:-false}"
    local prefix="🍊 "
    
    if [[ "$is_error" == "true" ]]; then
        echo "${prefix}❌ Error: $message" >&2
    else
        echo "${prefix}$message"
    fi
}

clean_repo() {
    echo2 "🧹 Cleaning Git repository"
    git reset --hard
    git clean -fd
}

show_help() {
    echo "This $0 script will use swift-docc-plugin to build HTML documentation of the OUDS iOS Swift Package"
    echo -e "Usage: $0 [--help] --libversion=VERSION\n"
    echo "Options:"
    echo "  --help                Shows this help message."
    echo "  --libversion=VERSION  Specifies the library version to incldue in HTML page (mandatory)."
}

# Step 0 - Prerequisites checks
# -----------------------------

# Default value for library version to add in main HTML page footer
lib_version=""

# Check for command-line arguments
for arg in "$@"; do
    case "$arg" in
        --help)
            show_help
            exit $EXIT_OK
            ;;
        --libversion=*)
            lib_version="${arg#*=}"
            ;;
        *)
            echo2 "Unknown parameter: $arg. Exits. ($EXIT_BAD_PARAMETER)" true
            exit $EXIT_BAD_PARAMETER
            ;;
    esac
done

if [[ -z "$lib_version" ]]; then
    echo2 "Parameter --libversion is mandatory. Exits. ($EXIT_BAD_PARAMETER)" true
    exit $EXIT_BAD_PARAMETER
fi

# Step 1 - Git setup
# ------------------

if [ -d ".git" ]; then
    echo2 "✅ This is a Git repository. Ensure the credentials you need are ready (SSH, HTTPS, GPG, etc.)"
else
    echo2 "This is not a Git repository. Exits. ($EXIT_NOT_GIT_REPO)" true
    exit $EXIT_NOT_GIT_REPO
fi

start_time=$(date +%s)

current_branch=$(git rev-parse --abbrev-ref HEAD)
echo2 "🔨 Current Git branch is '$current_branch'"
clean_repo # To get rid of unversioned files etc.

echo2 "👉 Creating documentation folder..."
mkdir -p "$DOCS_DIRECTORY"
echo2 "👍 Documention folder created at '$DOCS_DIRECTORY'!"

# Step 1 - For each target, build the DocC documentation
# ------------------------------------------------------

echo2 "👉 Generating docs..."

for target in ${TARGETS}
do
    echo2 "👉 Generating docs for $target..."
    swift package --allow-writing-to-directory "$target-docs" generate-documentation  --disable-indexing --transform-for-static-hosting --output-path "$target-docs" --target "$target"
    
    cp -r $target-docs/* $DOCS_DIRECTORY
    modified_target=$(echo $target | tr '-' '_' | tr '[:upper:]' '[:lower:]')
    cp -r $target-docs/index/index.json "$DOCS_DIRECTORY/index/$modified_target.json"
    echo2 "👍 Docs generated for $target!"
done

# Step 2 - Add CNAME file for GitHub Pages
# ----------------------------------------

echo2 "👉 Updating CNAME file"
echo "$GH_PAGES_DOMAIN" > "$DOCS_DIRECTORY/CNAME"
echo2 "👍 Updated!"
    
# Step 3 - Update global HTML file
# --------------------------------

echo2 "👉 Updating index.html..."

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
echo "<footer><p>Find the source code on <a href=\"$HTML_GITHUB_PROJECT_URL\">GitHub</a></p>" >> $DOCS_DIRECTORY/index.html
echo "<p>&copy; $(date +%Y) $HTML_PROJECT_COPYRIGHT</p><p>Documentation build $timestamp</p></footer></body></html>" >> $DOCS_DIRECTORY/index.html

echo2 "👍 index.html updated!"

# Step 4 - Checkout to GitHub Pages dedicated branch
# --------------------------------------------------

echo2 "👉 Versioning documentation in GitHub Pages branch (it can take a lot of time)..."

echo2 "🔨 Stashing things"
git stash -u

echo2 "🔨 Checkout GitHub Pages branch, align with remote"

# Check if the local branch exists
if git show-ref --verify --quiet refs/heads/"$GH_PAGES_BRANCH"; then
    echo2 "🔨 Checking out local branch '$GH_PAGES_BRANCH'"
    git checkout "$GH_PAGES_BRANCH"
    git reset --hard origin/$GH_PAGES_BRANCH # Ensure to be aligned with remote version
else
    echo2 "🔨 Local branch '$GH_PAGES_BRANCH' does not exist. Checking out from remote."
    git fetch origin
    git checkout -b "$GH_PAGES_BRANCH" origin/"$GH_PAGES_BRANCH"
fi

echo2 "🔨 Unstashing things"
git stash apply

files_count=`find $DOCS_DIRECTORY -type f | wc -l | xargs`

echo2 "🔨 Adding things (~ $files_count files)"
git add "$DOCS_DIRECTORY"

echo2 "🔨 Committing things (be ready if passwords / passphrases are asked)"
commit_message=$'doc: update DocC documentation for version v'"$lib_version"'\n\nUpdate documentation for GitHub pages of version v'"$lib_version"' of OUDS iOS library (build timestamp '"$timestamp"')\n\nWARNING: This is an automatic commit 🤖'
git commit -m "$commit_message"

echo2 "🔨 Pushing things"
git push origin

echo "🔨 Cleaning stashes"
git stash clear

commit_hash=`git rev-parse HEAD`

echo2 "🔨 Going back to previous Git branch"
git checkout "$current_branch"

# Step 5 - Metrics and conclusion
# -------------------------------

echo2 "👍 Pushed with commit '$commit_hash'"
echo2 "🎉 Documentation also available in $DOCS_DIRECTORY"
echo2 "🧮 There are '$files_count' in $DOCS_DIRECTORY!"

echo2 "👉 Zipping documentation folder"
zip -r "$DOCUMENTATION_ZIP_LOCATION"  "$DOCS_DIRECTORY"
echo2 "👍 Documentation ZIP available at $DOCUMENTATION_ZIP_LOCATION"

if [ -d "$DOCS_DIRECTORY" ]; then
    echo2 "🧹 Deleting docs directory (don't worry, a ZIP should exist and pages have been pushed)"
    yes | rm -rf "$DOCS_DIRECTORY"
fi

end_time=$(date +%s)
elapsed_time=$(( end_time - start_time ))
elapsed_time_minutes=$(( elapsed_time / 60 ))
elapsed_time_seconds=$(( elapsed_time % 60 ))

echo2 "⌛ Elapsed time: ${elapsed_time_minutes} minutes and ${elapsed_time_seconds} seconds"

exit $EXIT_OK