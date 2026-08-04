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

# More context at:`
# - https://github.com/Orange-OpenSource/ouds-ios/discussions/626
# - https://github.com/Orange-OpenSource/ouds-ios/issues/1649

# Documentation is published to a dedicated GitHub repository (Orange-OpenSource/ouds-ios-documentation)
# on branch "main". GitHub Pages must be configured on this repository, with the custom domain
# $SERVICE_PAGES_DOMAIN pointing to it.

# Services pages (like GitHub Pages) custom subdomain for the CNAME, don't forget to verify it in organization side for security reasons!
# For example, with GitHub pages, given the "ouds-ios-documentation" project for "Orange-OpenSource" organization,
# the custom domain $SERVICE_PAGES_DOMAIN will thus automatically redirect to "orange-opensource.github.io/ouds-ios-documentation".
SERVICE_PAGES_DOMAIN="ios.unified-design-system.orange.com"

# The dedicated GitHub repository hosting the documentation website, and the branch to push to.
DOCUMENTATION_REPO_URL="git@github.com:Orange-OpenSource/ouds-ios-documentation.git"
DOCUMENTATION_REPO_BRANCH="main"

# Files present in the documentation repository that must NEVER be overwritten
# by the generated content. They are the "source of truth" version maintained
# manually in the doc repo. If DocC generated a homonym, it will be discarded.
PROTECTED_FILES=(
    "favicon.ico"
    "favicon.svg"
    "LICENSE"
    "llms.txt"
    "README.md"
    "theme-settings.json"
    ".gitignore"
    ".mailmap"
    "_/logo-OUDS.png"
    "_/screenshot-dark.png"
    "_/screenshot-light.png"
)

# For temporary folders
timestamp=$(date +%s)

# Path where the documentation will be temporary generated
DOCUMENTATION_HTML_LOCATION="/tmp/ouds-docs-$timestamp"

# Path where the dedicated documentation repository will be cloned
DOCUMENTATION_REPO_LOCATION="/tmp/ouds-ios-documentation-$timestamp"

# Assets on the documentation repository live at its root
DOCS_DIRECTORY="$DOCUMENTATION_REPO_LOCATION"

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
    if [[ ${use_git:-0} -eq 1 && -d "$DOCUMENTATION_REPO_LOCATION" ]]; then
        _ "🧹 Removing temporary documentation repository clone at '$DOCUMENTATION_REPO_LOCATION'"
        rm -rf "$DOCUMENTATION_REPO_LOCATION"
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

show_help() {
    echo "This script will generate web files (HTML, CSS, JSON, JavaScript) for online documentation for OUDS iOS Swift Package"
    echo "It can also publish the documentation to the dedicated GitHub repository Orange-OpenSource/ouds-ios-documentation (branch main)."
    echo -e "Usage: $0 [--help] --libversion=VERSION [--usegit | --nozip]\n"
    echo "Options:"
    echo "  --help                Shows this help message."
    echo "  --libversion=VERSION  Specifies the library version to include in HTML page (mandatory)."
    echo "  --usegit              Specifies to push documentation to the dedicated repository $DOCUMENTATION_REPO_URL on branch $DOCUMENTATION_REPO_BRANCH (default it does not, only local)."
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
    _ "✅ Documentation will be pushed to '$DOCUMENTATION_REPO_URL' on branch '$DOCUMENTATION_REPO_BRANCH'"
    _ "🔐 Please ensure the credentials you need are ready (SSH, GPG, etc.) to push to this repository"
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
# See Orange-OpenSource/ouds-ios#636, Orange-OpenSource/ouds-ios#1481
echo '<!doctype html><html><head><meta http-equiv="refresh" content="0; URL= https://ios.unified-design-system.orange.com/documentation/"></head><body>Redirecting to https://ios.unified-design-system.orange.com/documentation/</body></html>' > "$DOCUMENTATION_HTML_LOCATION/index.html"

# Step 5 - Clone the dedicated documentation repository (if relevant)
# --------------------------------------------------------------------

# The generated files are copied into a fresh clone of the dedicated documentation repository,
# then committed and pushed on branch $DOCUMENTATION_REPO_BRANCH.

if [[ $use_git -eq 1 ]]; then
    _ "👉 Cloning dedicated documentation repository '$DOCUMENTATION_REPO_URL' (branch '$DOCUMENTATION_REPO_BRANCH')..."

    clean_directory "$DOCUMENTATION_REPO_LOCATION"

    git clone --depth 1 --branch "$DOCUMENTATION_REPO_BRANCH" \
        "$DOCUMENTATION_REPO_URL" "$DOCUMENTATION_REPO_LOCATION"

    _ "✅ Cloned into '$DOCUMENTATION_REPO_LOCATION'"

    # Git memory boost, applied to the clone (documentation repository can grow large)
    git -C "$DOCUMENTATION_REPO_LOCATION" config pack.windowMemory "100m"
    git -C "$DOCUMENTATION_REPO_LOCATION" config pack.packSizeLimit "100m"
    git -C "$DOCUMENTATION_REPO_LOCATION" config pack.threads "1"
    git -C "$DOCUMENTATION_REPO_LOCATION" config core.packedGitLimit "128m"
    git -C "$DOCUMENTATION_REPO_LOCATION" config core.packedGitWindowSize "128m"
    git -C "$DOCUMENTATION_REPO_LOCATION" config http.postBuffer 524288000

    # git -C "$DOCUMENTATION_REPO_LOCATION" config commit.gpgsign false

    # Clean before all to free memory
    git -C "$DOCUMENTATION_REPO_LOCATION" gc --auto

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

    # Move into the clone so that glob patterns (*.jpg, *.json, *.html) are expanded
    # relative to the documentation repository, not the caller's working directory.
    pushd "$DOCS_DIRECTORY" > /dev/null

    # Protect files that must keep their versioned content (see PROTECTED_FILES).
    # - If the file is tracked in the doc repo -> restore it from HEAD (undo any overwrite)
    # - If the file is not tracked but was produced by DocC -> delete the generated copy
    _ "🛡️  Protecting files that must not be overwritten by generated content"
    for f in "${PROTECTED_FILES[@]}"; do
        if git ls-files --error-unmatch -- "$f" > /dev/null 2>&1; then
            git checkout HEAD -- "$f"
            _ "   ✅ Restored '$f' from HEAD"
        elif [[ -e "$f" ]]; then
            rm -f "$f"
            _ "   🗑️  Removed generated (untracked) '$f'"
        else
            _ "   ℹ️  '$f' not present, nothing to do"
        fi
    done

    # Stage every change in the documentation clone:
    #   - new files (css/, data/, documentation/, images/, js/, CNAME, *.html, *.json, *.jpg, …)
    #   - modified files (favicon.ico, favicon.svg, …)
    #   - deleted files (obsolete assets from previous doc versions)
    # The clone is freshly created at the beginning of the script, so nothing parasite
    # can end up here. This avoids maintaining a whitelist that must stay in sync with
    # what "swift package generate-documentation" happens to produce, and fixes previous
    # silent failures caused by non-existent pathspecs (e.g. downloads/ or tutorials/).
    # Use --verbose so the user sees the progress (each file must be hashed by Git);
    # do NOT redirect stderr to /dev/null and do NOT swallow errors, otherwise a failing
    # 'git add' would result in an empty index and a misleading "No changes to commit".
    _ "   ⏳ Running 'git add -A --verbose' — for ~$files_count files this can take several minutes."
    _ "   Each file must be hashed by Git; progress will scroll below."
    git add -A --verbose
    _ "✅ Staging done"

    # Check if changes
    if git diff --cached --quiet; then
        _ "⚠️  No changes to commit"
    else
        changes_count=$(git diff --cached --numstat | wc -l)
        _ "✅ Staged $changes_count changes"
    fi

    _ "🔨 Committing things (be ready if passwords / passphrases are asked)"
    commit_message=$(printf "docs: update DocC documentation for version v%s (%s)\n\nUpdate documentation website for version v%s of OUDS iOS library (build timestamp %s)\n\nWARNING: This is an automatic commit 🤖" "$lib_version" "$timestamp" "$lib_version" "$timestamp")
    # git commit -m "$commit_message" --no-gpg-sign
    git commit -m "$commit_message"

    _ "🔨 Pushing things to '$DOCUMENTATION_REPO_URL' on branch '$DOCUMENTATION_REPO_BRANCH'"
    git push origin "$DOCUMENTATION_REPO_BRANCH"

    popd > /dev/null

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

# Step 6b - Cleanup temporary documentation repository clone (if relevant)
# ------------------------------------------------------------------------

if [[ $use_git -eq 1 ]]; then
    commit_hash=$(git -C "$DOCUMENTATION_REPO_LOCATION" rev-parse HEAD)
    _ "👍 Pushed with commit '$commit_hash' on branch '$DOCUMENTATION_REPO_BRANCH' of '$DOCUMENTATION_REPO_URL'"
    _ "🧹 Removing temporary documentation repository clone at '$DOCUMENTATION_REPO_LOCATION'"
    clean_directory "$DOCUMENTATION_REPO_LOCATION"
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