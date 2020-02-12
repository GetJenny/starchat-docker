#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_0}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/knowledgebase -d '{
	"id": "1",
	"conversation": "id:1000",
	"indexInConversation": 2,
	"question": "how are you?",
        "questionNegative": ["are you kidding me?"],
	"answer": "fine thanks",
	"questionScoredTerms": [
		[
			"validation",
			0.03431486996831187
		],
		[
			"imac",
			1.1298276004683466
		],
		[
			"aware",
			3.1504895812959743
		],
		[
			"ios",
			6.14545226791214
		],
		[
			"activation",
			4.921338043098873
		]
	],
	"verified": true,
	"topics": "t1 t2",
	"doctype": "normal",
	"state": "",
	"status": 0
}'
