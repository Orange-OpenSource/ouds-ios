#!/bin/bash

DOCS_DIRECTORY=./docs
mkdir -p ${DOCS_DIRECTORY}

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

for target in ${TARGETS}
do
    echo "Generating docs for $target"
    swift package --allow-writing-to-directory "$target-docs" generate-documentation  --disable-indexing --transform-for-static-hosting --output-path "$target-docs" --target "$target"
    
    cp -r $target-docs/* ${DOCS_DIRECTORY}
    modified_target=$(echo $target | tr '-' '_' | tr '[:upper:]' '[:lower:]')
    cp -r $target-docs/index/index.json "${DOCS_DIRECTORY}/index/$modified_target.json"
done

echo "Updating index.html"

echo "<!DOCTYPE html><html><head></head><body><ol>" > docs/index.html

for target in ${TARGETS}
do
    cp -R $target-docs/data/documentation/* ${DOCS_DIRECTORY}/data/documentation/
    cp -R $target-docs/documentation/* ${DOCS_DIRECTORY}/documentation/
    rm -r "$target-docs"
    modified_target=$(echo $target | tr '-' '_' | tr '[:upper:]' '[:lower:]')
    echo "<li><a href=\"./documentation/$modified_target\">$target</a></li>" >> ${DOCS_DIRECTORY}/index.html
done

echo "</ol></body></html>" >> ${DOCS_DIRECTORY}/index.html

echo "Documentation available in ${DOCS_DIRECTORY}"
