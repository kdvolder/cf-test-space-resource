#!/bin/bash
rm -fr test-target
mkdir test-target
cat test-request.json | ../assets/in `pwd`/test-target
