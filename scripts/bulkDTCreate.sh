#!/usr/bin/env bash

PORT=${1:-8443}
INDEX_NAME=${2:-'index_getjenny_english_0'}
curl -k -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
 -H "Content-Type: application/json" -X POST "https://localhost:${PORT}/${INDEX_NAME}/decisiontable/bulk" -d '[
      {
            "analyzer" : "",
            "state" : "any_further",
            "queries" : [],
            "maxStateCount" : 0,
            "bubble" : "Let me know if you have any other request, or type 'Bye' to close the chat",
            "failureValue" : "",
            "successValue" : "",
            "action" : "",
            "actionInput" : {},
            "executionOrder" : 1,
            "stateData" : {}
      },
      {
            "failureValue" : "",
            "state" : "call_operator",
            "analyzer" : "band(bor(vOneKeyword(\"call\"),vOneKeyword(\"talk\"),vOneKeyword(\"speak\")),vOneKeyword(\"operator\"))",
            "maxStateCount" : 0,
            "bubble" : "No operator is available at the moment, sorry. You just have me.",
            "queries" : [
               "can I talk with an operator",
               "I want to talk with an operator",
               "transfer me to the operator"
            ],
            "executionOrder" : 1,
            "stateData" : {},
            "action" : "",
            "successValue" : "",
            "actionInput" : {}
      },
      {
            "failureValue" : "",
            "state" : "code_78",
            "analyzer" : "band(vOneKeyword(\"code\"),vOneKeyword(\"78\"))",
            "queries" : [],
            "bubble" : "If elasticsearch complain about the size of the virtual memory:\n<br>\n<code>max virtual memory areas vm.max_map_count [65530] is too low, increase to at least [262144]</code>\n<br>\n<code>elastisearch exited with code 78</code>\n<br>\nrun:\n<br>\n<code>Sysctl -w vm.max_map_count=262144</code>",
            "maxStateCount" : 0,
            "executionOrder" : 1,
            "stateData" : {},
            "successValue" : "",
            "action" : "",
            "actionInput" : {}
      }
]'

