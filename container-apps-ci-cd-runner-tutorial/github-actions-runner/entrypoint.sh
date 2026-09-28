#!/bin/sh

set -eu

# Retrieve a short-lived runner registration token using the PAT.
REGISTRATION_TOKEN="$(curl -X POST -fsSL \
  --user "x-access-token:${GITHUB_PAT}" \
  -H 'Accept: application/vnd.github.v3+json' \
  -H 'X-GitHub-Api-Version: 2022-11-28' \
  "${REGISTRATION_TOKEN_API_URL}" \
  | jq -er '.token')"

./config.sh --url "${GH_URL}" --token "${REGISTRATION_TOKEN}" --unattended --ephemeral
exec ./run.sh
