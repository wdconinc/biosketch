#!/bin/bash

read prevline
while read nextline ; do
  if [ -z "${nextline##$prevline*}" ] ; then
    prevline=$nextline
  fi
  echo $prevline
  prevline=$nextline
done | uniq
