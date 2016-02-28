#!/bin/bash
#This Script Converts all private Putty Keys (.ppk) in the same folder to
#OpenSSH Key Pair (Public Key with .pub).
# This Script needs installed "putty-tools"

for file in ./*.ppk ; do 
	fileName=$(basename "$file")
	echo "Convert File: $fileName"

	fileNameTrimmed=${fileName%.ppk}
	puttygen $fileName -O private-openssh -o $fileNameTrimmed
	puttygen $fileName -O public-openssh -o $fileNameTrimmed.pub
done
