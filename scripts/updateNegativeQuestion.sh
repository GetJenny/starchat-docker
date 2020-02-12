#!/usr/bin/env bash

ID=${1:-}
QUERIES=${2}
INDEX_NAME=${3:-index_getjenny_english_0}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
 -H "Content-Type: application/json" -X PUT http://localhost:8443/${INDEX_NAME}/knowledgebase/${ID} -d "{
	\"questionNegative\": ${QUERIES}
}"

