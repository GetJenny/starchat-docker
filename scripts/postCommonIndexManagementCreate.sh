#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-"index_getjenny_english_common_0"}
curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST "http://localhost:${PORT}/${INDEX_NAME}/index_management/create"

