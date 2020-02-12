#!/usr/bin/env bash

QUERY=${1:-"how to install starchat"}
PORT=${2:-8888}
INDEX_NAME=${3:-index_getjenny_english_0}
ALGORITHM=${4:-NGRAM2}
curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
 -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/get_next_response -d "{
	\"conversationId\": \"1234\",
	\"userInput\": { \"text\": \"${QUERY}\" },
	\"values\": {
		\"returnValue\": \"\",
		\"data\": {\"varname2\": \"value1\", \"varname2\": \"value2\"}
	},
	\"threshold\": 0.0,
	\"maxResults\": 4,
	\"searchAlgorithm\": \"${ALGORITHM}\"
}"
