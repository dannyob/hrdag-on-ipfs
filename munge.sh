#!/bin/sh
###
# munge.sh
###
# Outputs a list of curl commands that, when piped to shell, will download
# the datasets from HRDAG's website, and arrange them into the current directory

grep -v "^#" < urls.txt | # remove comments
grep -v "^\s*$" |         # remove empty lines
while read LINE
do
    echo $LINE | 
    sed 's/,/ -o /' |     # construct a simple curl command
    sed 's/^/curl -R --create-dirs /'
done
