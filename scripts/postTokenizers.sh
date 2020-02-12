#!/usr/bin/env bash

ANALYZER=${1:-"stop"}
QUERY=${2:-"good morning, may I ask you a question?"}
PORT=${3:-8888}
INDEX_NAME=${4:-index_getjenny_english_0}
curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST "http://localhost:${PORT}/${INDEX_NAME}/tokenizers" -d "
{
	\"text\": \"${QUERY}\",
	\"tokenizer\": \"${ANALYZER}\"
}
"

