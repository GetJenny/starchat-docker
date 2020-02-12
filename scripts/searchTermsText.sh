#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_0}
QUERY=${3:-"term2"}
ANALYZER=${4:-"?analyzer=space_punctuation"}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X GET http://localhost:${PORT}/${INDEX_NAME}/term/text${ANALYZER} -d "${QUERY}"

