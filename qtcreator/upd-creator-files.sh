#!/bin/bash

THISDIR=$(readlink -f $(dirname $0))

OUT=`find $THISDIR -maxdepth 1 -iname *.files | tail -1`
[ "$OUT" ] || { echo "Error: no *.files files found in this directory. Bailout"; exit 1; }

EXCLUDE="\
"

PRUNE_ARGS=
for arg in $EXCLUDE; do
    PRUNE_ARGS="$PRUNE_ARGS -path $arg -prune -o"
done

find $THISDIR $PRUNE_ARGS -type f -print | sed -n 's/^..//p' > $OUT && echo "OK"
