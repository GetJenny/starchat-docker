#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_0}
# update the "further_details_access_question" entry in the DT
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X PUT http://localhost:${PORT}/${INDEX_NAME}/decisiontable -d '{
    "state": "further_details_access_question",
    "queries": ["cannot access account", "problem access account", "unable to access to my account", "completely forgot my password"],
    "actionInput": {"a": "b", "c": "d"}
}'

