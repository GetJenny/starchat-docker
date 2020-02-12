#!/usr/bin/env bash

QUERY1=${1:-"this is a test"}
QUERY2=${2:-"I'm trying this function"}
PORT=${3:-8888}
INDEX_NAME=${4:-index_getjenny_english_0}
curl -s -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST "http://localhost:${PORT}/${INDEX_NAME}/analyzers_playground" -d"
{

	\"analyzer\": \"conjunction(similar(\\\"${QUERY2}\\\"), similarCosEmd(\\\"${QUERY2}\\\"))\",
	\"query\": \"${QUERY1}\"
}
"


