#!/bin/bash

while read url ; do echo -e "---------" $url "----------" ; python3 ~/tools/linkfinder/linkfinder.py -o cli -i $url ; done < "$1"

