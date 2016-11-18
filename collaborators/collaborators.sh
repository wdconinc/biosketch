#!/bin/bash

./uniques.sh a4.tex hermes.tex prex.tex qweak.tex happex.tex moller.tex pvdis.tex solid-pvdis.tex | grep -i -v deconinck | sed 's/$/,/g' | tr '\n' ' ' | sed 's/, $/\n/'
