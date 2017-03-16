#!/bin/bash

set -e
set -o pipefail

last_file=`ls -t content/blog/*markdown|grep self|grep study|head -1`

echo $last_file

