#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_english}
INDEX_SUFFIX=${3}
if [[ ! -z ${INDEX_SUFFIX} ]]; then
  SUFFIX="&indexSuffix=${INDEX_SUFFIX}"
fi

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST "http://localhost:${PORT}/language_index_management/close?index_name=${INDEX_NAME}${SUFFIX}"
