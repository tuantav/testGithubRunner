#!/bin/bash

function replace_values() {
  local file_url="$GITHUB_WORKSPACE/appsettings.json"
  # replace value

  sed -i "s|\"ApiKey\": \".*\"|\"ApiKey\": \"${AZURE_APIKEY}\"|g" "$file_url"

  echo $AZURE_APIKEY | sed 's/./& /g'

  cat "$file_url"
}

replace_values
