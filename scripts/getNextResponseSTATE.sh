#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_0}
STATE_NAME=${3:-further_details_access_question}

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/get_next_response -d "{
	\"conversationId\": \"1234\",
	\"userInput\": { \"text\": \"\" },
	\"state\": [\"${STATE_NAME}\"],
	\"evaluationClass\": \"start\"
}"

