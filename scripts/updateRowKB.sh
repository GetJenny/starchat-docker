#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_0}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X PUT http://localhost:${PORT}/${INDEX_NAME}/knowledgebase/0 -d '{
	"conversation": "id:1001",
	"question": "thank you",
	"answer": "you are welcome!",
	"verified": true,
	"topics": "t1 t2",
	"doctype": "normal",
	"state": "",
	"status": 0
}'

