#!/bin/bash

set -x			# activate debugging from here

  cat ./script/sample.yml | sed 's/foo.com/'$DOMAIN_NAME'/g' > ./crt/$DOMAIN_NAME.yml
  echo $DOMAIN_NAME.yml > $DOMAIN_NAME.yml
  git add  "$DOMAIN_NAME.yml"
  git commit -m "Commit message"  
    
set +x			# stop debugging from here
