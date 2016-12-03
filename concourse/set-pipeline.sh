#!/bin/bash
fly -t tools set-pipeline --load-vars-from ${HOME}/.sts4-concourse-credentials.yml -p cf-test-space-resource -c pipeline.yml
