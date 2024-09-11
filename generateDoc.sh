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

# The name of the Git branch hosting GitHub Pages service
GH_PAGES_BRANCH="gh-pages"

# The generated name of the ZIP containing the generated sources of documentation (for archive)
timestamp=$(date +%s)
DOCUMENTATION_ZIP_NAME="documentation-$timestamp.zip"
DOCUMENTATION_ZIP_LOCATION="/tmp/$DOCUMENTATION_ZIP_NAME"

# Path where the documentation will be
DOCS_DIRECTORY="./docs"
mkdir -p "$DOCS_DIRECTORY"

# The targets to build documentation of
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

# Step 1 - For each target, build the DocC documentation
# ------------------------------------------------------

start_time=$(date +%s)

echo "🍊👉 Generating docs..."

current_branch=$(git rev-parse --abbrev-ref HEAD)
echo "🍊🔨 Cleaning Git repository before generation (current Git branch is '$current_branch')"
git reset --hard
git clean -fd

for target in ${TARGETS}
do
    echo "🍊👉 Generating docs for $target..."
    swift package --allow-writing-to-directory "$target-docs" generate-documentation  --disable-indexing --transform-for-static-hosting --output-path "$target-docs" --target "$target"
    
    cp -r $target-docs/* $DOCS_DIRECTORY
    modified_target=$(echo $target | tr '-' '_' | tr '[:upper:]' '[:lower:]')
    cp -r $target-docs/index/index.json "$DOCS_DIRECTORY/index/$modified_target.json"
    echo "🍊👍 Docs generated for $target!"
done

# Step 2 - Add CNAME file for GitHub Pages
# ----------------------------------------

echo "🍊👉 Updating CNAME file"
echo "ios.unified-design-system.orange.com" > "$DOCS_DIRECTORY/CNAME"
echo "🍊👍 Updated!"
    
# Step 3 - Update global HTML file
# --------------------------------

echo "🍊👉 Updating index.html..."

echo "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>OUDS iOS Swift Documentation</title><style>body{font-family:Arial,sans-serif;line-height:1.6;margin:0;padding:0;background-color:#000000;color:#fff;}header{background-color:#424242;color:white;padding:20px;text-align:center;}main{padding:20px;}h1{margin:0;}ol{padding-left:20px;}li{margin:10px 0;}a{color:#06f;text-decoration:none;}a:hover{text-decoration:underline;}footer{text-align:center;padding:10px;background-color:#000000;border-top:1px solid #e0e0e0;}</style></head><body><header><h1>OUDS iOS Swift Documentation/h1></header><main>" > $DOCS_DIRECTORY/index.html
echo "<h2>iOS SwiftUI implementation of the Unified Design System of Orange</h2>" >> $DOCS_DIRECTORY/index.html
echo "<h3>All targets of the Swift Package are listed below</h3>" >> $DOCS_DIRECTORY/index.html
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
echo "<footer><p>Find the source code on <a href=\"https://github.com/Orange-OpenSource/ouds-ios\">GitHub</a></p>" >> $DOCS_DIRECTORY/index.html
echo "<p>&copy; $(date +%Y) Orange</p></footer></body></html>" >> $DOCS_DIRECTORY/index.html

echo "🍊👍 index.html updated!"

# Step 4 - Checkout to GitHub Pages dedicated branch
# --------------------------------------------------

echo "🍊👉 Versioning documentation in GitHub Pages branch (it can take a lot of time)..."

echo "🍊🔨 Stashing things"
git stash -u

echo "🍊🔨 Checkout GitHub Pages branch"
git checkout $GH_PAGES_BRANCH
git reset --hard origin/$GH_PAGES_BRANCH

echo "🍊🔨 Unstashing things"
git stash apply

echo "🍊🔨 Adding things"
git add $DOCS_DIRECTORY

files_count=`find $DOCS_DIRECTORY -type f | wc -l | xargs`

echo "🍊🔨 Committing things (be ready if passwords are asked)"
git commit -m $'doc: update DocC documentation for GitHub Pages\n\nWARNING: This is an automatic commit 🤖'

echo "🍊🔨 Pushing things"
git push origin

echo "🍊🔨 Cleaning stashes"
git stash clear

commit_hash=`git rev-parse HEAD`

echo "🍊🔨 Going back to previous Git branch"
git checkout "$current_branch"

echo "🍊👍 Pushed with commit '$commit_hash'"
echo "🍊🎉 Documentation also available in $DOCS_DIRECTORY"
echo "🍊🧮 There are '$files_count' in $DOCS_DIRECTORY!"

echo "🍊👉 Zipping documentation folder"
zip -r "$DOCUMENTATION_ZIP_LOCATION"  "$DOCS_DIRECTORY"
echo "🍊👍 Documentation ZIP available at $DOCUMENTATION_ZIP_LOCATION"

end_time=$(date +%s)
elapsed_time=$(( end_time - start_time ))
elapsed_time_minutes=$(( elapsed_time / 60 ))
elapsed_time_seconds=$(( elapsed_time % 60 ))
echo "🍊⌛ Elapsed time: ${elapsed_time_minutes} minutes and ${elapsed_time_seconds} seconds"