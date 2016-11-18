#!/bin/bash

while read line ; do
  name=${line%% (*} # remove trailing space and institution
  sed -i "s/^$name$/$line/g" $*
done
