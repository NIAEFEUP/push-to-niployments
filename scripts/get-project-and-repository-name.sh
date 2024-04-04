#!/bin/bash

echo "::group::Parsing Harbor Project and Repository names..."

if [[ -n $INPUT_PROJECT_NAME ]] && [[ -n $INPUT_REPOSITORY_NAME ]]; then
    
    # We have input from the action, use those.

    PROJECT_NAME=$INPUT_PROJECT_NAME
    REPOSITORY_NAME=$INPUT_REPOSITORY_NAME
else
    # If we reach this point, either the project name or the repository name are empty. Parse GitHub's repository name and work from there.

    if [[ $GITHUB_REPOSITORY_NAME == *-* ]]; then
        # Assume that the repository name follows the format AABB-CCDD.
        # Just split on the first dash character
            
        read -ra PARTS <<< "${GITHUB_REPOSITORY_NAME//-/ }"

        PROJECT_NAME=${PARTS[0]}
        IFS="-"
        REPOSITORY_NAME="${PARTS[*]:1}"
        unset $IFS
    else
        # repository name does not contain '-', store it under default "niaefeup" Harbor project

        PROJECT_NAME="niaefeup"
        REPOSITORY_NAME=$GITHUB_REPOSITORY_NAME
    fi
fi


echo "PROJECT_NAME=${PROJECT_NAME}" >> "$GITHUB_OUTPUT"
echo "REPOSITORY_NAME=${REPOSITORY_NAME}" >> "$GITHUB_OUTPUT"

echo "::endgroup::"
exit 0

