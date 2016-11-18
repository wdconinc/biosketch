#!/bin/bash

for i in $* ; do
  grep --no-filename "^[^%]" $i
done | sort | uniq


