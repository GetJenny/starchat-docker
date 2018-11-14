#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_0}
INDEX_SUFFIX=${3}
if [[ ! -z ${INDEX_SUFFIX} ]]; then
  SUFFIX="?indexSuffix=${INDEX_SUFFIX}"
fi

curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST "http://localhost:${PORT}/${INDEX_NAME}/index_management/create${SUFFIX}"

