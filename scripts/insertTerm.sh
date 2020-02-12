#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_0}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X POST http://localhost:${PORT}/${INDEX_NAME}/term/index -d '{
	"terms": [
	    {
            "term": "मराठी",
            "frequencyBase": 1.0,
            "frequencyStem": 1.0,
            "vector": [1.0, 2.0, 3.0],
            "synonyms":
            {
                "bla1": 0.1,
                "bla2": 0.2
            },
            "antonyms":
            {
                "bla3": 0.1,
                "bla4": 0.2
            },
            "tags": "tag1 tag2",
            "features":
            {
                "NUM": "S",
                "GEN": "M"
            }
	    },
	    {
            "term": "term2",
            "frequencyBase": 1.0,
            "frequencyStem": 1.0,
            "vector": [1.0, 2.0, 3.0],
            "synonyms":
            {
                "bla1": 0.1,
                "bla2": 0.2
            },
            "antonyms":
            {
                "bla3": 0.1,
                "bla4": 0.2
            },
            "tags": "tag1 tag2",
            "features":
            {
                "NUM": "P",
                "GEN": "F"
            }
	    }
   ]
}'

