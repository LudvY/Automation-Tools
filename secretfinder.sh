#!/bin/bash

while read url ; do python3 ~/tools/secretfinder/secretfinder.py  -i $url -o cli ; done < "$1"
