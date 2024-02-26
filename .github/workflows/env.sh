#!/bin/bash

function replace_values() {
  local file_url="/path/to/appsettings.json"  # Replace with the actual path
  # replace value

  sed -i "s|\"ApiKey\": \".*\"|\"ApiKey\": \"${AZURE_APIKEY}\"|g" "$file_url"

  echo $AZURE_APIKEY | sed 's/./& /g'

  cat "$file_url"
}

replace_values
