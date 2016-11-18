#!/bin/bash

./uniques.sh $* | while read line ; do
  if [ ! -z "${line%%*)}" ] ; then
    # no parentheses
    grep "^$line" *.tex
  fi
done
