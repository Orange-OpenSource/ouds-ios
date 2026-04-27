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

# More context at https://github.com/Orange-OpenSource/ouds-ios/discussions/626

# Services pages (like GitHub Pages) custom subdomain for the CNAME, don't forget to verify it in organization side for security reasons!
# For example, with GitHub pages, given the "ouds-ios" project for "Orange-OpenSource" organization,
# the custom domain "ios.unified-design-system.orange.com" will thus automatically redirect to "orange-opensource.github.io/ouds-ios".
SERVICE_PAGES_DOMAIN="ios.unified-design-system.orange.com"

# The name of the Git branch hosting the documentation (e.g. GitHub Pages branch defined in repository).
# We suppose all the documentation will be in this dedicated branch.
SERVICE_PAGES_BRANCH="gh-pages"

timestamp=$(date +%s)

# Path where the documentation will be temporary
DOCUMENTATION_HTML_LOCATION="/tmp/ouds-docs-$timestamp"

# Relative path for assets on the branch
DOCS_DIRECTORY=".."

# The ZIP containing the generated sources of documentation (for archive).
DOCUMENTATION_ZIP_NAME="ouds-docs-$timestamp.zip"
DOCUMENTATION_ZIP_LOCATION="/tmp/$DOCUMENTATION_ZIP_NAME"

# Errors management
# -----------------

EXIT_OK=0
EXIT_ERROR_SIG=1
EXIT_NOT_GIT_REPO=2
EXIT_BAD_PARAMETER=3
EXIT_CANNOT_PROCESS=4

on_error_signal() {
    local exit_code=$?
    local line_number=${BASH_LINENO[0]}
    _ "❌  An error occurred with command '$BASH_COMMAND' at line $line_number (exit code: $exit_code). Exits. ($EXIT_ERROR_SIG)" true
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

clean_directory() {
    if [ -d "$1" ]; then rm -rf "$1"; fi
}

clean_repo() {
    _ "🧹 Cleaning Git repository"
    git reset --hard
    git clean -fd
    git prune
}

show_help() {
    echo "This script will generate web files (HTML, CSS, JSON, JavaScript) for online documentation for OUDS iOS Swift Package"
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

# Get the version of the library to add in commit messages
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
    _ "👍 Ok, let's go! Keep in mind it can need between 15 and 20 minutes!"
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

# Step 2 - Generate the documentation
# -----------------------------------

_ "👉 Generating web documentation at '$DOCUMENTATION_HTML_LOCATION'"

swift package \
    --allow-writing-to-directory "$DOCUMENTATION_HTML_LOCATION" \
    generate-documentation \
    --enable-experimental-combined-documentation \
    --target OUDSThemesContract \
    --target OUDSModules \
    --target OUDSComponents \
    --target OUDSThemesOrange \
    --target OUDSThemesOrangeCompact \
    --target OUDSThemesSosh \
    --target OUDSThemesWireframe \
    --target OUDSTokensComponent \
    --target OUDSTokensSemantic \
    --target OUDSTokensRaw \
    --target OUDSFoundations \
    --output-path "$DOCUMENTATION_HTML_LOCATION" \
    --transform-for-static-hosting \
    --experimental-transform-for-static-hosting-with-content \
    --warnings-as-errors \
    --symbol-graph-minimum-access-level public


files_count=`find $DOCUMENTATION_HTML_LOCATION -type f | wc -l | xargs`

_ "👍 Generated '$files_count' files!"

# Step 3 - Add custom assets
# --------------------------

# CNAME for GitHub Pages etc.
if [[ $use_git -eq 1 ]]; then
    _ "👉 Updating CNAME file"
    echo "$SERVICE_PAGES_DOMAIN" > "$DOCUMENTATION_HTML_LOCATION/CNAME"
    _ "👍 Updated!"
fi

# Step 4 - Add hard-coded redirect URL
# ------------------------------------

# Landing page of generated documentation is broken, real content is in /documentation
# Override this page and force by code redirection
# See Orange-OpenSource/ouds-ios#636
echo '<!doctype html><html><head><meta http-equiv="refresh" content="0; URL= https://ios.unified-design-system.orange.com/documentation/oudsthemescontract"></head><body>Redirecting to https://ios.unified-design-system.orange.com/documentation/oudsthemescontract</body></html>' > "$DOCUMENTATION_HTML_LOCATION/index.html"

# Step 5 - Checkout to service pages dedicated branch (if relevant)
# ------------------------------------------------------------------

# When the files have been generated, stash them, change branch, unstash, add, commit, push then clean

if [[ $use_git -eq 1 ]]; then
    _ "👉 Versioning documentation in service pages branch (it can take a lot of time)..."

    # Git memory boost
    git config pack.windowMemory "100m"
    git config pack.packSizeLimit "100m"
    git config pack.threads "1"
    git config core.packedGitLimit "128m"
    git config core.packedGitWindowSize "128m"
    git config http.postBuffer 524288000

    clean_repo

    # git config commit.gpgsign false

    _ "🔨 Checkout service pages branch, align with remote"

    # Clean before all to free memory
    git gc --auto

    # Check if the local branch exists.
    if git show-ref --verify --quiet refs/heads/"$SERVICE_PAGES_BRANCH"; then
        _ "🔨 Checking out local branch '$SERVICE_PAGES_BRANCH'"
        
        # Delete current pages branch and create new one (memory cleanup)
        git branch -D "$SERVICE_PAGES_BRANCH" 2>/dev/null || true
        git fetch origin "$SERVICE_PAGES_BRANCH"
        git checkout -b "$SERVICE_PAGES_BRANCH" "origin/$SERVICE_PAGES_BRANCH"
    else
        _ "🔨 Local branch '$SERVICE_PAGES_BRANCH' does not exist. Checking out from remote."
        git fetch origin "$SERVICE_PAGES_BRANCH"
        git checkout -b "$SERVICE_PAGES_BRANCH" "origin/$SERVICE_PAGES_BRANCH"
    fi

    _ "✅ Branch '$SERVICE_PAGES_BRANCH' checked out successfully"


    _ "🔨 Applying changes"

    # Ensure we have only updated files on destination branch.
    # Supposing all assets are in the branch in root level (/)
    # Do not remove .ico and .sg files ; keep the ones already existing in the branch
    # Do not remove theme-settings.json
    _ "🔨 Cleaning old documentation files"

    # One-line deletion comman
    find "$DOCS_DIRECTORY" -mindepth 1 \
        \( -type d -name "css" -o \
        -type d -name "data" -o \
        -type d -name "documentation" -o \
        -type d -name "images" -o \
        -type d -name "img" -o \
        -type d -name "index" -o \
        -type d -name "js" \) \
        -exec rm -rf {} + 2>/dev/null || true

    # Specific deletions
    find "$DOCS_DIRECTORY" -maxdepth 1 \
        \( -name "*.jpg" -o -name "*.html" -o -name "CNAME" \) \
        -type f -delete 2>/dev/null || true

    _ "✅ Cleanup completed"

    # Copy all files from temporary folder to branch (with progress)
    _ "🔨 Copying documentation files (this may take several minutes)..."

    # If available use rsync command
    # Otherwise fallback to cp command
    if command -v rsync &> /dev/null; then    
        rsync -a --info=progress2 "$DOCUMENTATION_HTML_LOCATION/" "$DOCS_DIRECTORY/" || {
            _ "rsync failed, falling back to cp" true
            cp -r "$DOCUMENTATION_HTML_LOCATION"/* "$DOCS_DIRECTORY"
        }
    else
        if ! cp -r "$DOCUMENTATION_HTML_LOCATION"/* "$DOCS_DIRECTORY" 2>&1; then
            _ "Copy failed (exit code: $?)" true
            _ "   Source: $DOCUMENTATION_HTML_LOCATION" true
            _ "   Destination: $DOCS_DIRECTORY" true
            exit $EXIT_CANNOT_PROCESS
        fi
    fi

    _ "✅ Files copied successfully"


    # It seems there is an issue with references of images
    # Need to copy them also in root images folder at least for landing page
    # See https://github.com/swiftlang/swift-docc/issues/1284
    cp "$DOCS_DIRECTORY/images/OUDSThemesContract/ic_unified_ds.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSThemesContract/ic_design_token_intro.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSThemesContract/ic_theme_intro.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSThemesContract/ic_module_intro.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSThemesContract/ic_component_intro.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSComponents/ic_folder_categories.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSFoundations/ic_layers.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSModules/ic_modular.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSThemesOrange/ic_theme_orange.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSThemesOrangeCompact/ic_theme_orangecompact.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSThemesSosh/ic_theme_sosh.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSThemesWireframe/ic_theme_wireframe.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSTokensComponent/ic_design_token_figma_component.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSTokensRaw/ic_design_token_figma_raw.png" "$DOCS_DIRECTORY/images"
    cp "$DOCS_DIRECTORY/images/OUDSTokensSemantic/ic_design_token_figma_semantic.png" "$DOCS_DIRECTORY/images"
    
    _ "🔨 Staging changes (~ $files_count files, this may take time)..."

    # One-line add command to minimize number of commands
    git add "$DOCS_DIRECTORY/css" \
            "$DOCS_DIRECTORY/data" \
            "$DOCS_DIRECTORY/documentation" \
            "$DOCS_DIRECTORY/downloads" \
            "$DOCS_DIRECTORY/tutorials" \
            "$DOCS_DIRECTORY/images" \
            "$DOCS_DIRECTORY/img" \
            "$DOCS_DIRECTORY/index" \
            "$DOCS_DIRECTORY/js" \
            "$DOCS_DIRECTORY"/*.jpg \
            "$DOCS_DIRECTORY"/*.json \
            "$DOCS_DIRECTORY"/*.html \
            "$DOCS_DIRECTORY/CNAME" 2>/dev/null || true

    # Check if changes
    if git diff --cached --quiet; then
        _ "⚠️  No changes to commit"
    else
        changes_count=$(git diff --cached --numstat | wc -l)
        _ "✅ Staged $changes_count changes"
    fi
    
    _ "🔨 Committing things (be ready if passwords / passphrases are asked)"
    commit_message=$(printf "docs: update DocC documentation for version v%s (%s)\n\nUpdate documentation for GitHub pages of version v%s of OUDS iOS library (build timestamp %s)\n\nWARNING: This is an automatic commit 🤖" "$lib_version" "$timestamp" "$lib_version" "$timestamp")
    # git commit -m "$commit_message" --no-gpg-sign
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
    zip -r "$DOCUMENTATION_ZIP_LOCATION" "$DOCUMENTATION_HTML_LOCATION"/*
    size_in_byte=`du "$DOCUMENTATION_ZIP_LOCATION" | cut -f1`
    _ "👍 Documentation ZIP available at $DOCUMENTATION_ZIP_LOCATION ($size_in_byte bytes)"
fi

# Step 6b - Resume work on Git branch (if relevant)
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
