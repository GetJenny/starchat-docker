#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_0}
ROUTE=${3:-knowledgebase}
#ROUTE=${3:-prior_data}

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X DELETE http://localhost:${PORT}/${INDEX_NAME}/${ROUTE} -d '{"ids": ["bla145"]}'

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X DELETE http://localhost:${PORT}/${INDEX_NAME}/${ROUTE} -d '{"ids": ["bla145"]}'

