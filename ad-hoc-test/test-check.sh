#!/bin/bash
if [ ! -f test-request.json ]; then
    echo "Please make a copy of 'sample-test-request.json' into 'test-request.json' "
    echo "and edit it to fill in your own cf credentials"
fi
cat test-request.json | ../assets/check