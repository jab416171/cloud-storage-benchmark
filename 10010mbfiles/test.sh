#!/bin/bash

md5sumpath="../hashes/$(basename $PWD)/md5sum"
while [ ! -e $md5sumpath ]; do
	sleep 1
done
until [[ $(./generatehash.sh | grep "$(cat $md5sumpath)") ]]; do
	sleep 1
done
