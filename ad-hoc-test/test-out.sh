#!/bin/bash
if [ ! -d test-target ]; then
    echo "test-target doesn't exist. Create it first by running 'test-in.sh'"
    exit 1
fi
cat test-request.json | ../assets/out `pwd`/test-target
