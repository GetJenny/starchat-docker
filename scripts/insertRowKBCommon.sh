#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_common_0}
curl -v -H "Authorization: Basic $(echo -n 'admin:adminp4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/knowledgebase -d '{
	"id": "0",
	"conversation": "id:1000",
	"indexInConversation": 1,
	"question": "thank you",
        "questionNegative": ["ok, I will not talk with you anymore", "thank you anyway"],
	"answer": "you are welcome! you very welcome!",
	"questionScoredTerms": [
		[
			"currently",
			1.0901874131103333
		],
		[
			"installing",
			2.11472759638322
		],
		[
			"mac",
			9.000484252244254
		],
		[
			"reset",
			4.34483238516225
		],
		[
			"app",
			1.2219061535961406
		],
		[
			"device",
			2.1679468390743414E-213
		],
		[
			"devices",
			4.1987625801077624E-268
		]
	],
	"verified": true,
	"topics": "t1 t2",
	"doctype": "normal",
	"state": "",
	"status": 0
}'

