#!/bin/sh

# https://docs.travis-ci.com/user/deployment/script/

echo "First arg: $1"

REST_API_URL = ${DEV_REST_API_URL}

if [ "$1" == "master" ]; then
	REST_API_URL = ${PROD_REST_API_URL}
else if [ "$1" == "stage" ]; then
	REST_API_URL = ${STAGE_REST_API_URL}
fi

echo 'From shell script '$REST_API_URL

#echo ${PROD_REST_API_URL}
#sed -i -e 's/REST_API_URL/'$REST_API_URL'/g' src/constants/Config.js.sample
#mv src/constants/Config.js.sample src/constants/Config.js
