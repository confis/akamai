#!/bin/bash

#echo "${{ steps.sample.outputs.content }}" >  sample4.yml

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
  cat ./script/sample.yml | sed 's/foo.com/'fofofofofof.com'/g' > echo sample4.yml
#  echo "domain: $line"
#  git add  "$line.yml"
#  git commit -m "Commit message"
 done < "$File"
