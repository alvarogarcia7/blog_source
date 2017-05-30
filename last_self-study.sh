#!/bin/bash

set -e
set -o pipefail

last_file=`ls content/blog/*{md,markdown}|grep self|grep study|sort -rn|head -1`

echo $last_file

