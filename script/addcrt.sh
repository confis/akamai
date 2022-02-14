#!/bin/bash
cat >> .edgerc << 'END'
${{ secrets.AKAMAI_TOKEN }}
END

cd ./crt
echo "Hello" > index.foo
git add  "index.foo"
git commit -m "Commit message"

#File="domain/domainlist.txt"
#while IFS= read -r line
#do
#  cat script/sample.yml | sed 's/foo.com/'$line'/g' > crt/$line.yml
#  # akamai cps create --file crt/$line.yml --contract-id V-40T9211 --force --section default
#  echo "domain: $line"
#done < "$File"
