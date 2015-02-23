#!/bin/sh

find . -not -name "*.sh" -a -not -name ".." -a -not -name "." -delete
rm -rf ../hashes/
