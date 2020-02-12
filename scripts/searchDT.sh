#!/usr/bin/env bash

Q="${1:-'cannot access my account'}"
S="${2:-0.0}"
B="${3:-100.0}"
ALGORITHM=${4:-NGRAM2}
PORT=${5:-8888}
INDEX_NAME=${6:-index_getjenny_english_0}

curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/decisiontable/search -d "{
	\"queries\": \"${Q}\",
	\"minScore\": ${S},
	\"boostExactMatchFactor\": ${B},
	\"searchAlgorithm\": \"${ALGORITHM}\",
	\"from\": 0,
	\"size\": 10
}"
