#!/usr/bin/env bash

LANG=${1:-en}
PORT=${2:-8888}
INDEX_NAME=${3:-index_getjenny_english_0}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X GET "http://localhost:${PORT}/${INDEX_NAME}/language_guesser/${LANG}"

