#!/bin/bash

cat $* | while read line ; do
  name=${line%% (*} # remove trailing space and institution
  if [ "${name:0:1}" == "%" ] ; then
    name=${name#%*} # remove starting comment
    sed -i "s/^$name$/$line/g" $*
  fi
done
