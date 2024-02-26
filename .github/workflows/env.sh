#!/bin/bash

function replace_values() {
  local file_url="./appsettings.json"  # Assuming both script and appsettings.json are in the same directory
  # replace value

  sed -i "s|\"ApiKey\": \".*\"|\"ApiKey\": \"${AZURE_APIKEY}\"|g" "$file_url"

  echo $AZURE_APIKEY | sed 's/./& /g'

  cat "$file_url"
}

replace_values
