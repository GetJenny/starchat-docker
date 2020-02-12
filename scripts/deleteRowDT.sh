#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_0}
STATE=${3:-further_details_access_question}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
 -H "Content-Type: application/json" -X DELETE http://localhost:${PORT}/${INDEX_NAME}/decisiontable?id=${STATE}

