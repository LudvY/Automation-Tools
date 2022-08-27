#!/bin/bash

while read cidr ; do echo -e "---------" $cidr "----------" ; cero $cidr ; done < "$1"
