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

# CONTEXT:
# - `swift package` cannot manage UIKit and fails when it meets some calls to that
# - `xcrun docc` or `xcodebuild docbuild` fail to manage targets and Swift Package products
# Thus need to rely on manualy generated doccarchive files before processing them.
# See https://github.com/Orange-OpenSource/ouds-ios/issues/168
# See also https://github.com/Orange-OpenSource/ouds-ios/issues/95
# (╯°□°)╯︵ ┻━┻

# The folder where all the .doccarchive folders to process are.
# If workspace is a Git repository you should NOT place the doccarchives inside, because they will be wiped.
DOCCARCHIVES_PATH="$HOME/Downloads"

# Services pages (like GitHub Pages) custom subdomain for the CNAME, don't forget to verify it in organization side for security reasons!
# For example, with GitHub pages, given the "ouds-ios" project for "Orange-OpenSource" organization,
# the custom domain "ios.unified-design-system.orange.com" will thus automatically redirect to "orange-opensource.github.io/ouds-ios".
SERVICE_PAGES_DOMAIN="ios.unified-design-system.orange.com"

# Some HTML fragments to add in the HTML global page index.html
HTML_TITLE="OUDS iOS Swift Documentation"
HTML_H1="OUDS iOS Swift Documentation"
HTML_H2="iOS SwiftUI implementation of the Unified Design System of Orange"
HTML_PROJECT_URL="https://github.com/Orange-OpenSource/ouds-ios"
HTML_PROJECT_COPYRIGHT="Orange SA"
HTML_PROJECT_WIKI_URL="https://github.com/Orange-OpenSource/ouds-ios/wiki"

# The name of the Git branch hosting the documentation (e.g. GitHub Pages branch defined in repository).
# We suppose all the documentation will be in this dedicated branch.
SERVICE_PAGES_BRANCH="gh-pages"

# Path where assets to copy are
ASSETS_DIRECTORY="./docs_assets"

# Path where the documentation will be temporary
DOCS_DIRECTORY="../docs"

# The generated name of the ZIP containing the generated sources of documentation (for archive).
timestamp=$(date +%s)
DOCUMENTATION_ZIP_NAME="ouds-docs-$timestamp.zip"
DOCUMENTATION_ZIP_LOCATION="/tmp/$DOCUMENTATION_ZIP_NAME"
DOCUMENTATION_HTML_LOCATION="/tmp/ouds-docs-$timestamp"

# Errors management
# -----------------

EXIT_OK=0
EXIT_ERROR_SIG=1
EXIT_ERROR_BAD_PREREQUISITES=2
EXIT_NOT_GIT_REPO=3
EXIT_BAD_PARAMETER=4
EXIT_CANNOT_PROCESS=5

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
    echo "This script will pick HTML files in some doccarchive folders to build HTML documentation of the OUDS iOS Swift Package"
    echo "It can also update the Git repository."
    echo -e "Usage: $0 [--help] --libversion=VERSION [--usegit | --nozip]\n"
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

# Get the version of the library to add it in main page.
if [[ -z "$lib_version" ]]; then
    _ "Parameter --libversion is mandatory. Exits. ($EXIT_BAD_PARAMETER)" true
    exit $EXIT_BAD_PARAMETER
fi

# Upload to Git repository or not.
if [[ $use_git -eq 1 ]]; then
    _ "✔️ OK, Git will be used"
else
    _ "✔️ OK, Git will NOT be used"
fi

# Keep ZIP or not.
if [[ $no_zip -eq 1 ]]; then
    _ "✔️ OK, no ZIP archive will be done"
else
    _ "✔️ OK, a ZIP archive will be created"
fi       

if [[ "$use_git" -eq 0 && "$no_zip" -eq 1 ]]; then
    _ "🥴 WARNING: What do you use this script for? You should at least save the doc in Git repository or in ZIP file"
fi

# Ask the user if he/she wants to go further (updating documentation updates the production website).
read -p "🍊 ❓ Do you want to update the documentation? (yes/YES/Y/y): " answer
if [[ ! "$answer" =~ ^(yes|YES|Y|y)$ ]]; then
    _ "👋 Bye!"
    exit $EXIT_OK
else
    _ "👍 Ok, let's go!"
fi

# Check if the folder containing doccarchives exists and has doccarchive.
if [ ! -d "$DOCCARCHIVES_PATH" ]; then
    _ "'$DOCCARCHIVES_PATH' does not exist, how can I get the doccarchives? Exits. ($EXIT_ERROR_BAD_PREREQUISITES)" true
    exit $EXIT_ERROR_BAD_PREREQUISITES
fi

shopt -s nullglob  # Allow glob patterns to return nothing if no match.
doccarchives=("$DOCCARCHIVES_PATH"/*.doccarchive)

# Check of there are things to process.
if [ ${#doccarchives[@]} -eq 0 ]; then
    _ "There is no doccarchive in '$DOCCARCHIVES_PATH. Exits. ($EXIT_ERROR_BAD_PREREQUISITES)" true
    exit $EXIT_ERROR_BAD_PREREQUISITES
fi

start_time=$(date +%s)

# Step 1 - Git setup (if relevant)
# --------------------------------

if [[ $use_git -eq 1 ]]; then
    if [ -d "../.git" ]; then

        # Xcode keeps files and dislikes updates of local branches...
        _ "🚨 You should close Xcode or any software working on this workspace, before going further, just in case of..."
        _ "Press any key to continue..."
        read -n 1 -s # Don't care of the input, just want the user be ready in the end.
    
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
_ "👍 Documentation folder created at '$DOCS_DIRECTORY'!"

# Step 2 - For each doccarchive, copy the assets
# ----------------------------------------------

_ "👉 Preparing docs..."

# To store the docarchive folder names for later.
declare -a doccarchive_names

# Process all .doccarchive folders in the target path.
for doccarchiveDir in "${doccarchives[@]}"; do
    _ "👉 Processing docs for $doccarchiveDir..."
    if [ -d "$doccarchiveDir" ]; then

        # Get name of the doccarchive folder and save it.
        base_name=$(basename "$doccarchiveDir" .doccarchive)
        doccarchive_names+=("$base_name")

        # TODO: Refactor this part by copying only the needed files.
        # WARNING: This is pure tikering (╯°□°)╯︵ ┻━┻
        # We are pretty sure some files may be not that much useful and can not be copied.
        # This solution works, but a refactoring should be done.

        # Prepare folders.
        mkdir -p "$DOCS_DIRECTORY/css"
        mkdir -p "$DOCS_DIRECTORY/data/documentation"
        mkdir -p "$DOCS_DIRECTORY/documentation"
        mkdir -p "$DOCS_DIRECTORY/img"
        mkdir -p "$DOCS_DIRECTORY/index"
        mkdir -p "$DOCS_DIRECTORY/js"

        # Copy assets for the browser and pages (dumb implementation copy everything)
        cp -r "$doccarchiveDir/css/" "$DOCS_DIRECTORY/css/"
        cp -r "$doccarchiveDir/data/documentation/" "$DOCS_DIRECTORY/data/documentation/"
        cp -r "$doccarchiveDir/documentation/" "$DOCS_DIRECTORY/documentation/"
        cp -r "$doccarchiveDir/img/" "$DOCS_DIRECTORY/img/"
        cp -r "$doccarchiveDir/js/" "$DOCS_DIRECTORY/js/"

        index_file="$doccarchiveDir/index/index.json"
        if [ -f "$index_file" ]; then
            new_index_name=$(echo "$base_name" | tr '[:upper:]' '[:lower:]').json 
            cp "$index_file" "$DOCS_DIRECTORY/index/$new_index_name"
        else
            _ "The index.json file at '$index_file' cannot be processed. Exits. ($EXIT_CANNOT_PROCESS)" true
            exit $EXIT_CANNOT_PROCESS            
        fi
    else
        _ "The .doccarchive folder '$doccarchiveDir' cannot be processed. Exits. ($EXIT_CANNOT_PROCESS)" true
        exit $EXIT_CANNOT_PROCESS
    fi
    _ "👍 Docs processed for $doccarchiveDir!"
done

_ "👉 All index.json files processed, now time to merge them"
python3 merge-json-indexes.py "$DOCS_DIRECTORY/index"
_ "👍 Merge done!"

# Step 3 - Add custom assets
# --------------------------

# Some custom assets for the website
cp "$ASSETS_DIRECTORY/apple-touch-icon.png" "$DOCS_DIRECTORY/"
cp "$ASSETS_DIRECTORY/favicon-16x16.png" "$DOCS_DIRECTORY/"
cp "$ASSETS_DIRECTORY/favicon-32x32.png" "$DOCS_DIRECTORY/"
cp "$ASSETS_DIRECTORY/favicon.ico" "$DOCS_DIRECTORY/"

# CNAME for GitHub Pages etc.
if [[ $use_git -eq 1 ]]; then
    _ "👉 Updating CNAME file"
    echo "$SERVICE_PAGES_DOMAIN" > "$DOCS_DIRECTORY/CNAME"
    _ "👍 Updated!"
fi

# Step 4 - Update global HTML file
# --------------------------------

# This is only to build a global index.html file referencing all other targets index.html files.

_ "👉 Updating index.html..."

echo "<!DOCTYPE html><html lang=\"en\"><head>" > $DOCS_DIRECTORY/index.html
echo "<meta charset=\"UTF-8\">"  >> $DOCS_DIRECTORY/index.html
echo "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" >> $DOCS_DIRECTORY/index.html
echo "<title>$HTML_TITLE</title>" >> $DOCS_DIRECTORY/index.html
echo "<link rel=\"icon\" href=\"./favicon-32x32.png\" sizes=\"32x32\" type=\"image/png\">" >> $DOCS_DIRECTORY/index.html
echo "<link rel=\"icon\" href=\"./favicon-16x16.png\" sizes=\"16x16\" type=\"image/png\">" >> $DOCS_DIRECTORY/index.html
echo "<link rel=\"apple-touch-icon\" href=\"./apple-touch-icon.png\" sizes=\"180x180\">" >> $DOCS_DIRECTORY/index.html
echo "<link rel=\"icon\" href=\"./favicon.ico\">" >> $DOCS_DIRECTORY/index.html
echo "<style>body{font-family:Arial,sans-serif;line-height:1.6;margin:0;padding:0;background-color:#000000;color:#fff;}header{background-color:#424242;color:white;padding:20px;text-align:center;}main{padding:20px;}h1{margin:0;}ol{padding-left:20px;}li{margin:10px 0;}a{color:#06f;text-decoration:none;}a:hover{text-decoration:underline;}footer{text-align:center;padding:10px;background-color:#000000;border-top:1px solid #e0e0e0;}</style>" >> $DOCS_DIRECTORY/index.html
echo "</head><body>" >> $DOCS_DIRECTORY/index.html
echo "<header><h1>$HTML_H1</h1></header>" >> $DOCS_DIRECTORY/index.html
echo "<main>" >> $DOCS_DIRECTORY/index.html

echo "<h2>$HTML_H2</h2>" >> $DOCS_DIRECTORY/index.html
echo "<h3>Version v$lib_version</h3>" >> $DOCS_DIRECTORY/index.html
echo "<h4>All targets of the Swift Package are listed below</h4>" >> $DOCS_DIRECTORY/index.html
echo "<ol>" >> $DOCS_DIRECTORY/index.html
for doccarchive_name in "${doccarchive_names[@]}"; do
    target_name=$(echo "$doccarchive_name" | tr '-' '_' | tr '[:upper:]' '[:lower:]')
    echo "<li><a href=\"./documentation/$target_name\">$doccarchive_name</a></li>" >> $DOCS_DIRECTORY/index.html
done
echo "</ol></main>" >> $DOCS_DIRECTORY/index.html
echo "<footer><p>Find the source code on <a href=\"$HTML_PROJECT_URL\">GitHub</a></p>" >> $DOCS_DIRECTORY/index.html
echo "<p>Looking for other things? Have a look on <a href=\"$HTML_PROJECT_WIKI_URL\">the wiki</a></p>" >> $DOCS_DIRECTORY/index.html
echo "<p>&copy; $(date +%Y) $HTML_PROJECT_COPYRIGHT</p><p>Documentation build n°$timestamp</p></footer></body></html>" >> $DOCS_DIRECTORY/index.html

_ "👍 index.html updated!"

files_count=`find $DOCS_DIRECTORY -type f | wc -l | xargs`

# Step 5a - Checkout to service pages dedicated branch (if relevant)
# ------------------------------------------------------------------

# When the files have been generated, stash them, change branch, unstash, add, commit, push then clean

if [[ $use_git -eq 1 ]]; then
    _ "👉 Versioning documentation in service pages branch (it can take a lot of time)..."

    _ "🔨 Saving things"
    cp -r "$DOCS_DIRECTORY" "$DOCUMENTATION_HTML_LOCATION"

    clean_repo
    rm -rf "$DOCS_DIRECTORY"

    _ "🔨 Checkout service pages branch, align with remote"

    # Check if the local branch exists.
    if git show-ref --verify --quiet refs/heads/"$SERVICE_PAGES_BRANCH"; then
        _ "🔨 Checking out local branch '$SERVICE_PAGES_BRANCH'"
        git checkout "$SERVICE_PAGES_BRANCH"
        git reset --hard origin/$SERVICE_PAGES_BRANCH # Ensure to be aligned with remote version.
    else
        _ "🔨 Local branch '$SERVICE_PAGES_BRANCH' does not exist. Checking out from remote."
        git fetch origin
        git checkout -b "$SERVICE_PAGES_BRANCH" origin/"$SERVICE_PAGES_BRANCH"
    fi

    _ "🔨 Applying changes"

    # Ensure we have only updated files.
    mkdir -p "$DOCS_DIRECTORY/css"
    mkdir -p "$DOCS_DIRECTORY/data/documentation"
    mkdir -p "$DOCS_DIRECTORY/documentation"
    mkdir -p "$DOCS_DIRECTORY/img"
    mkdir -p "$DOCS_DIRECTORY/index"
    mkdir -p "$DOCS_DIRECTORY/js"
    
    # The HTML shards to update, hoping we won't loose some (╯°□°)╯︵ ┻━┻
    cp -r "$DOCUMENTATION_HTML_LOCATION/css/"* "$DOCS_DIRECTORY/css/"
    cp -r "$DOCUMENTATION_HTML_LOCATION/data/documentation/"* "$DOCS_DIRECTORY/data/documentation/"
    cp -r "$DOCUMENTATION_HTML_LOCATION/documentation/"* "$DOCS_DIRECTORY/documentation/"
    cp -r "$DOCUMENTATION_HTML_LOCATION/img/"* "$DOCS_DIRECTORY/img/"
    cp -r "$DOCUMENTATION_HTML_LOCATION/index/"* "$DOCS_DIRECTORY/index/"
    cp -r "$DOCUMENTATION_HTML_LOCATION/js/"* "$DOCS_DIRECTORY/js/"
    
    cp "$DOCUMENTATION_HTML_LOCATION/CNAME" "$DOCS_DIRECTORY/"
    cp "$DOCUMENTATION_HTML_LOCATION/index.html" "$DOCS_DIRECTORY/"

    # Some custom assets for the website
    cp "$DOCUMENTATION_HTML_LOCATION/apple-touch-icon.png" "$DOCS_DIRECTORY/"
    cp "$DOCUMENTATION_HTML_LOCATION/favicon-16x16.png" "$DOCS_DIRECTORY/"
    cp "$DOCUMENTATION_HTML_LOCATION/favicon-32x32.png" "$DOCS_DIRECTORY/"
    cp "$DOCUMENTATION_HTML_LOCATION/favicon.ico" "$DOCS_DIRECTORY/"

    _ "🔨 Adding things (~ $files_count files)"
    git add "$DOCS_DIRECTORY"
    git add "$DOCS_DIRECTORY/index.html"

    _ "🔨 Committing things (be ready if passwords / passphrases are asked)"
    commit_message=$(printf "docs: update DocC documentation for version v%s (%s)\n\nUpdate documentation for GitHub pages of version v%s of OUDS iOS library (build timestamp %s)\n\nWARNING: This is an automatic commit 🤖" "$lib_version" "$timestamp" "$lib_version" "$timestamp")
    git commit -m "$commit_message"

    _ "🔨 Pushing things"
    git push origin "$SERVICE_PAGES_BRANCH"

else
    _ "👍 Ok, just keep documentation here"
fi

# Step 6 - Compress ZIP (if relevant)
# -----------------------------------

# ZIP action must be done before reseting the Git workspace (otherwise everything will be wiped out).
if [[ $no_zip -eq 0 ]]; then
    _ "👉 Zipping documentation folder"
    zip -r "$DOCUMENTATION_ZIP_LOCATION" "$DOCS_DIRECTORY"/*
    size_in_byte=`du "$DOCUMENTATION_ZIP_LOCATION" | cut -f1`
    _ "👍 Documentation ZIP available at $DOCUMENTATION_ZIP_LOCATION ($size_in_byte bytes)"
fi

# Step 5b - Resume work on Git branch (if relevant)
# -------------------------------------------------

if [[ $use_git -eq 1 ]]; then
    commit_hash=`git rev-parse HEAD`
    _ "🔨 Going back to previous Git branch"
    clean_repo
    git fetch origin
    git checkout "$current_branch"
    git reset --hard "origin/$current_branch"
    _ "👍 Pushed with commit '$commit_hash'"
fi

# Step 7 - Metrics and conclusion
# -------------------------------

end_time=$(date +%s)
elapsed_time=$(( end_time - start_time ))
elapsed_time_minutes=$(( elapsed_time / 60 ))
elapsed_time_seconds=$(( elapsed_time % 60 ))

_ "⌛ Elapsed time: ${elapsed_time_minutes} minutes and ${elapsed_time_seconds} seconds"
_ "🚀 There were about $files_count files to process!"
_ "👋 Bye!"

exit $EXIT_OK

# In case of performances issues due to the large amount of files in the Git repository:
#   run "git clean -fd ; git reset --hard ; rm -rf .build"
#   Or use "git prune"
#   Or reclone the repository