#!/usr/bin/python

import sys,struct

hex = raw_input("please input hex.\n")


def split_str(s, n):
   "split string by its length"
   length = len(s)
   return [s[i:i+n] for i in range(0, length, n)]

f = open(sys.argv[1],"ab")

ary = split_str(hex, 2)

for i in ary:
    f.write(struct.pack("B", int(i,16)))
f.close()
