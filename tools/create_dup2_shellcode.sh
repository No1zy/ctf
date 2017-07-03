#!/bin/bash

echo "Please input file descriptor."
read FD
sed -ie "s/lea\sebx,\s\[edx+.\]/lea ebx, \[edx+$FD\]/" dup2.s
gcc -nostdlib -m32 dup2.s -o tmp.out
RESULT=$(objdump -M intel -d tmp.out | grep '^ ' | cut -f2 | perl -pe 's/(\w{2})\s+/\\x\1/g')
echo $RESULT
rm -f tmp.out
