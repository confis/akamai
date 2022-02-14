#!/bin/bash
#cat >> .edgerc << 'END'
#${{ secrets.AKAMAI_TOKEN }}
#END

#cd ./crt
#echo "Hello" > index.foo
#git add  "index.foo"
#git commit -m "Commit message"

File="domain/domainlist.txt"
while IFS= read -r line
do
  cat ./script/sample.yml | sed 's/foo.com/'$line'/g' > echo ./crt/$line.yml
  echo "domain: $line"
  git add  "$line.yml"
  git commit -m "Commit message"
done < "$File"
