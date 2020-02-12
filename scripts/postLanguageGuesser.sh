#!/usr/bin/env bash

QUERY=${1:-"good morning, may I ask you a question?"}
PORT=${2:-8888}
INDEX_NAME=${3:-index_getjenny_english_0}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST "http://localhost:${PORT}/${INDEX_NAME}/language_guesser" -d "
{
	\"inputText\": \"${QUERY}\"
}
"

