#!/bin/bash
START=1
END=1
#END=$((1 + $RANDOM % 10))
for i in $(eval echo "{$START..$END}")
do
  DEV_ID=$((1 + $RANDOM % 20))
  git checkout dev-$DEV_ID
  echo $i >> readme.md
  git add .
  git commit -m "test"
  git push
  sleep 5
done
