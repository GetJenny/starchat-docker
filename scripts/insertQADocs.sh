#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_0}
#ROUTE=${3:-prior_data}
ROUTE=${3:-conversation_logs}
#ROUTE=${3:-knowledgebase}

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/${ROUTE} -d '{
  "id": "1",
  "conversation": "conv:1000",
  "indexInConversation": 1,
  "status": 0,
  "coreData": {
    "question": "thank you, bye",
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
    "topics": "t1 t2",
    "verified": true
  },
  "annotations": {
    "state": "state1",
    "doctype": "NORMAL"
  }
}'

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/${ROUTE} -d '{
  "id": "2",
  "conversation": "conv:1000",
  "indexInConversation": 2,
  "status": 0,
  "coreData": {
    "question": "thank you, bye",
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
    "topics": "t1 t2",
    "verified": true
  },
  "annotations": {
    "state": "state2",
    "doctype": "NORMAL",
    "feedbackConvScore": 5.0
  }
}'

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/${ROUTE} -d '{
  "id": "3",
  "conversation": "conv:1001",
  "indexInConversation": 1,
  "status": 0,
  "coreData": {
    "question": "thank you, bye",
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
    "topics": "t1 t2",
    "verified": true
  },
  "annotations": {
    "state": "state3",
    "doctype": "NORMAL"
  }
}'

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/${ROUTE} -d '{
  "id": "4",
  "conversation": "conv:1001",
  "indexInConversation": 2,
  "status": 0,
  "coreData": {
    "question": "thank you, bye",
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
    "topics": "t1 t2",
    "verified": true
  },
  "annotations": {
    "state": "state1",
    "doctype": "NORMAL",
    "feedbackConvScore": 3.0
  }
}'

//// escalated.TRANSFERRED

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/${ROUTE} -d '{
  "id": "5",
  "conversation": "conv:1002",
  "indexInConversation": 1,
  "status": 0,
  "coreData": {
    "question": "thank you, bye",
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
    "topics": "t1 t2",
    "verified": true
  },
  "annotations": {
    "state": "state2",
    "doctype": "NORMAL",
    "escalated": "TRANSFERRED"
  }
}'

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/${ROUTE} -d '{
  "id": "6",
  "conversation": "conv:1002",
  "indexInConversation": 2,
  "status": 0,
  "coreData": {
    "question": "thank you, bye",
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
    "topics": "t1 t2",
    "verified": true
  },
  "annotations": {
    "state": "state3",
    "doctype": "NORMAL",
    "feedbackConvScore": 6.0,
    "escalated": "TRANSFERRED"
  }
}'

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/${ROUTE} -d '{
  "id": "7",
  "conversation": "conv:1003",
  "indexInConversation": 1,
  "status": 0,
  "coreData": {
    "question": "thank you, bye",
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
    "topics": "t1 t2",
    "verified": true
  },
  "annotations": {
    "state": "state1",
    "doctype": "NORMAL",
    "escalated": "TRANSFERRED"
  }
}'

curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/${ROUTE} -d '{
  "id": "8",
  "conversation": "conv:1003",
  "indexInConversation": 2,
  "status": 0,
  "coreData": {
    "question": "thank you, bye",
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
    "topics": "t1 t2",
    "verified": true
  },
  "annotations": {
    "state": "state2",
    "doctype": "NORMAL",
    "feedbackConvScore": 3.0,
    "escalated": "TRANSFERRED"
  }
}'
