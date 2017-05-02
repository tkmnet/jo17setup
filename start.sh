#!/bin/sh

cd `dirname $0`
docker run --name rrsoacis -p 3080:3080 -p 3000:3000 -v ${PWD}/rrsoacis-init.sh:/rrsoacis-init.sh -dt rrsoacis/rrsoacis 2>/dev/null
ECODE=$?
if [ $ECODE -eq 125 ] ; then
docker start rrsoacis
fi

