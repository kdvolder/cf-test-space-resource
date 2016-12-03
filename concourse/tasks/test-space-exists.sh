#!/bin/bash
set -e
config_file=test-space/config.json
cf_api=`jq -r .api_url ${config_file}`
cf_user=`jq -r .user ${config_file}`
cf_password=`jq -r .password ${config_file}`
cf_org=`jq -r .org ${config_file}`
cf_space=`jq -r .space ${config_file}`

cf login \
    -a $cf_api \
    -u $cf_user \
    -p $cf_password \
    -o $cf_org \
    -s $cf_space

cf spaces

cf spaces | grep $cf_space