#!/bin/bash

writefile=$1
writestr=$2

#echo $writefile $writestr
#echo

if [[ -z $writefile || -z $writestr ]]
then
        echo "ERROR: One or Both Arguments Not Specified"
        echo "Invocation Format: "./writer.sh {File Directory Path and Name} {String to be Written}""
        exit 1
else
        mkdir -p "$(dirname "$writefile")"
        echo "$writestr" > $writefile
        echo "done"
fi

