#!/usr/bin/python3

import sys
import struct

f=open(sys.argv[1], 'rb')
loadOffset = int(sys.argv[2], 16)
skip = int(sys.argv[3], 16)

if skip > 0:
    f.read(skip)

f=f.read()

fmt='>%dH' % (len(f)//2,)
words = ['%04x' % i for i in struct.unpack(fmt, f)]

for i in range(0, len(words), 16):
    print('%04x=%s' % (loadOffset + i * 2, ' '.join(words[i:i+16])))

print('g%04x' % loadOffset)
