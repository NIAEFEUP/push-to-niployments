#!/bin/bash

echo "::group::Parsing Harbor Project and Repository names..."

if [[ -n $INPUT_PROJECT_NAME ]] && [[ -n $INPUT_REPOSITORY_NAME ]]; then
    PROJECT_NAME=$INPUT_PROJECT_NAME
    REPOSITORY_NAME=$INPUT_REPOSITORY_NAME
else
    PROJECT_NAME="niaefeup"
    REPOSITORY_NAME=$GITHUB_REPOSITORY_NAME
fi

echo "PROJECT_NAME=${PROJECT_NAME}" >> "$GITHUB_OUTPUT"
echo "REPOSITORY_NAME=${REPOSITORY_NAME}" >> "$GITHUB_OUTPUT"

echo "::endgroup::"
exit 0

