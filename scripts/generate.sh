#!/bin/bash

set -e

PARAMS="-interaction=nonstopmode -halt-on-error"

cd src

ls

xelatex $PARAMS -output-directory ../$OUTPUT_DIR $1

cd ..
