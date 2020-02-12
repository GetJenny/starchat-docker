#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_0}

# state is also used as ID (see updateRowDT.sh)
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/decisiontable -d '{
	"state": "further_details_access_question",
        "maxStateCount": 0,
        "executionOrder": 0,
        "analyzer": "",
	"queries": ["cannot access account", "problem access account"],
	"bubble": "What seems to be the problem exactly?",
	"action": "show_buttons",
	"actionInput": {"Forgot Password": "forgot_password", "Account locked": "account_locked", "Payment problem": "payment_problem", "Specify your problem": "specify_problem", "I want to call an operator": "call_operator", "None of the above": "start"},
    "stateData": {},
	"successValue": "eval(show_buttons)",
	"failureValue": "dont_understand"
}'

