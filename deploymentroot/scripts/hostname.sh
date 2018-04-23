#!/bin/bash 
newhostname=`hostname -f`
if [[ ${newhostname} != *cluster ]]
then
	newhostname=$newhostname.cluster	
fi
echo $newhostname
