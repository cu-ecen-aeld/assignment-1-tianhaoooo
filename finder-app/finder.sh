#!/bin/bash

filesdir=$1
searchstr=$2

#echo "Search String "$searchstr" in $filesdir"
#echo

if [[ -z $filesdir || -z $searchstr ]]
then
        echo "ERROR: One or Both Arguments Not Specified"
        echo "Invocation Format: "./finder.sh {File Directory Path} {String to be searched}""
        exit 1
fi

while [ -d $filesdir ]
do
        x=$(grep -r -c $searchstr $filesdir | wc -l)
        y=$(grep -r $searchstr $filesdir | wc -l)
        echo "The number of files are $x and the number of matching lines are $y"
        #y=$(grep -r -c $searchstr $filesdir)
        #echo "The number of files are $x"
        #echo 
        #echo "And the number of matching lines are"
        #echo "$y"
        exit 0
done
echo "directory not exists"
exit 1

