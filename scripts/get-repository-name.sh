#!/bin/bash

echo "::group::Parsing Harbor Repository names..."

if [[ -n $INPUT_REPOSITORY_NAME ]]; then
    REPOSITORY_NAME=$INPUT_REPOSITORY_NAME
else
    REPOSITORY_NAME=$GITHUB_REPOSITORY_NAME
fi

echo "REPOSITORY_NAME=${REPOSITORY_NAME}" >> "$GITHUB_OUTPUT"

echo "::endgroup::"
exit 0

