#!/bin/bash

if [ "$#" -ne 2 ]
then
echo "Error: Two arguments are required"
exit 1
fi

writefile="$1"
writestr="$2"

if [ -z "$writefile" ]
then
echo "Error: File path not specified"
exit 1
fi

if [ -z "$writestr" ]
then
echo "Error: Text string not specified"
fi

directory=$(dirname "$writefile")
filename=$(basename "$writefile")
mkdir -p "$directory"
touch "$directory/$filename"

echo "$writestr" > "$directory/$filename"

if [ $? -ne 0 ]
then
echo "Error: Could not create file"
exit 1
fi

exit 0