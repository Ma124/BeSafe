#!/bin/bash

python build.py --src-haml=haml --src-coffee=coffeescript --src-scss=scss --out-all=docs "$@"
cp resources/** docs

