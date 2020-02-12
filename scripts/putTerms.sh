#!/usr/bin/env bash

PORT=${1:-8888}
INDEX_NAME=${2:-index_getjenny_english_0}
curl -v -H "Authorization: Basic $(echo -n 'test_user:p4ssw0rd' | base64)" \
  -H "Content-Type: application/json" -X PUT http://localhost:${PORT}/${INDEX_NAME}/term -d '{
	"terms": [
	    {
            "term": "मराठी",
            "frequencyBase": 1.0,
            "frequencyStem": 1.0,
            "vector": [1.2, 2.3, 3.4, 4.5],
            "synonyms":
            {
                "bla1": 0.1,
                "bla2": 0.2
            },
            "antonyms":
            {
                "term2": 0.1,
                "bla4": 0.2
            },
            "tags": "tag1 tag2",
            "features":
            {
                "FEATURE_NEW1": "V",
                "GEN": "M"
            }
	    },
	    {
            "term": "term2",
            "frequencyBase": 1.0,
            "frequencyStem": 1.0,
            "vector": [1.6, 2.7, 3.8, 5.9],
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
                "FEATURE_NEW1": "N",
                "GEN": "F"
            }
	    }
   ]
}'

