#!/usr/bin/env bash

#ANALYZER=${1:-"band(gte(doubleNumberVariable(\\\"CURRENT_HOUR\\\"), doubleNumberVariable(\\\"OPEN_HOUR\\\")), lte(doubleNumberVariable(\\\"CURRENT_HOUR\\\"), doubleNumberVariable(\\\"CLOSE_HOUR\\\")))"}
ANALYZER=${1:-"eq(doubleNumberVariable(\\\"OPEN_HOUR\\\", \\\"1.0\\\"), toDouble(\\\"8.0\\\"))"}
QUERY=${2:-"this is a test"}
DATA=${3:-"{\"traversedStates\": [], \"extractedVariables\":{\"TS\": \"1549986933000\", \"OPEN_HOUR\": \"8\", \"CLOSE_HOUR\": \"18\", \"CURRENT_HOUR\": \"19\"}}"}
#DATA=${3:-"{\"traversedStates\": [], \"extractedVariables\":{\"OPEN_HOUR\": \"8\", \"CLOSE_HOUR\": \"18\", \"CURRENT_HOUR\": \"17\"}}"}
PORT=${4:-8888}
INDEX_NAME=${5:-index_getjenny_english_0}
ALGORITHM=${6:-NGRAM2}
curl -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST "http://localhost:${PORT}/${INDEX_NAME}/analyzer/playground" -d "
{
	\"analyzer\": \"${ANALYZER}\",
	\"query\": \"${QUERY}\",
	\"data\": ${DATA},
	\"searchAlgorithm\": \"${ALGORITHM}\"
}
"

