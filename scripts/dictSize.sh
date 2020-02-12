#!/usr/bin/env bash

PORT=${1:-8888}
DATATYPE=${2:-knowledgebase}
INDEX_NAME=${3:-index_getjenny_english_0}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X GET "http://localhost:${PORT}/${INDEX_NAME}/dict_size/${DATATYPE}"

