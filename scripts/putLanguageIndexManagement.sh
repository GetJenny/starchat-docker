#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_english}
LANGUAGE=${3:-english}
UPDATE_TYPE=${4:-settings}
INDEX_SUFFIX=${5:-""}
if [[ ! -z ${INDEX_SUFFIX} ]]; then
  SUFFIX="&indexSuffix=${INDEX_SUFFIX}"
fi
curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
 -H "Content-Type: application/json" -X PUT "http://localhost:${PORT}/language_index_management/${UPDATE_TYPE}?index_name=${INDEX_NAME}${SUFFIX}"

