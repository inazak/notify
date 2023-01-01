#!/bin/sh

# using access token
# git config --global credential.helper cache

MODIFIED=$( cd $(dirname $0) ; git status | grep modified | wc -l )

if [ $MODIFIED -ne 0 ] ; then

  cd $(dirname $0)
  git add .
  git commit -m "modified"
  git push origin main

fi

