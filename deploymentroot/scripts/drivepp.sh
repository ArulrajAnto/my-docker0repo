#!/bin/bash
if [ "$#" == "0" ]
then
	exit -1
fi
ppfilename="$1"
shift
for param in $@
do
	echo ${param}
done
cat $ppfilename
