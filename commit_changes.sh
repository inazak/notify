#!/bin/sh

MODIFIED=$( cd $(dirname $0) ; git status | grep modified | wc -l )

if [ $MODIFIED -ne 0 ] ; then

  cd $(dirname $0)
  git commit -m "modified"

fi

