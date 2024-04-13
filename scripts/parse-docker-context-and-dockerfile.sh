#!/bin/bash

echo "::group::Parsing Docker context and Dockerfile paths"

if [[ -z "$INPUT_DOCKER_CONTEXT" ]]; then
    DOCKER_CONTEXT=
    DOCKER_DOCKERFILE=$INPUT_DOCKER_DOCKERFILE
else
    DOCKER_CONTEXT=$INPUT_DOCKER_CONTEXT

    if [[ -z "$INPUT_DOCKER_DOCKERFILE" ]]; then
        DOCKER_DOCKERFILE=
    else
        DOCKER_DOCKERFILE="$DOCKER_CONTEXT/$INPUT_DOCKER_DOCKERFILE"
    fi
fi

echo "DOCKER_CONTEXT=${DOCKER_CONTEXT}" >> "$GITHUB_OUTPUT"
echo "DOCKER_DOCKERFILE=${DOCKER_DOCKERFILE}" >> "$GITHUB_OUTPUT"

echo "::endgroup::"
exit 0
