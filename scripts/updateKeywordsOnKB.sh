#!/usr/bin/env bash

DOCID=${1:-1}
PORT=${2:-8888}
INDEX_NAME=${3:-index_getjenny_english_0}
ROUTE=${4:-conversation_logs}
#ROUTE=${4:-knowledgebase}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X PUT http://localhost:${PORT}/${INDEX_NAME}/updateTerms/${ROUTE} -d"{
	\"id\": \"${DOCID}\"
}"

