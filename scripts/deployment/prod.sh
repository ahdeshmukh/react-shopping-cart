#!/bin/sh

# https://docs.travis-ci.com/user/deployment/script/

sed -i -e 's/REST_API_URL/'$PROD_REST_API_URL'/g' src/constants/Config.js.sample
mv src/constants/Config.js.sample src/constants/Config.js