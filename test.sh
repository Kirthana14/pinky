#!/bin/bash
# 2e07d4c130f5b0e6469c97e8f9d9ed0987fda036 

fails=''

inspect() {
  if [ $1 -ne 0 ] ; then
    fails="${fails} $2"
  fi
}

docker-compose run users-service npm test
inspect $? users-service

docker-compose run movies-service npm test
inspect $? movies-service

testcafe firefox tests/**/*.js
inspect $? e2e

if [ -n "${fails}" ];
  then
    echo "Tests failed: ${fails}"
    exit 1
  else
    echo "Tests passed!"
    exit 0
fi
