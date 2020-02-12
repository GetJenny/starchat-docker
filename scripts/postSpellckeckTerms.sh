#!/usr/bin/env bash

QUERY=${1:-"this is a tes for splellchecker"}
PORT=${2:-8888}
INDEX_NAME=${3:-index_getjenny_english_0}

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/spellcheck/terms -d "{
  \"text\": \"${QUERY}\",
  \"prefixLength\": 3,
  \"minDocFreq\": 1
}"

