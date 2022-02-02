#!/bin/bash
File="domainList.txt"
while IFS= read -r line
do
  cat sample.yml | sed 's/foo.com/'$line'/g' > /users/yanivcohen/redirect.folloze.com/crt/$line.yml
  # akamai cps create --file /users/yanivcohen/redirect.folloze.com/crt/$line.yml --contract-id V-40T9211 --force --section default
  echo "domain: $line"
done < "$File"
