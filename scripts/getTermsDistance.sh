#!/usr/bin/env bash

QUERY=${1:-"\"term2\""}
INDEX_NAME=${2:-index_getjenny_english_0}
PORT=${3:-8888}
curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/term/distance -d "{
	\"ids\": [${QUERY}]
}"

