#!/usr/bin/python3

import sys
import struct

loadOffset = 0x1000

f=open(sys.argv[1], 'rb')
f.read(loadOffset)
f=f.read()

fmt='>%dH' % (len(f)//2,)
words = ['%04x' % i for i in struct.unpack(fmt, f)]

for i in range(0, len(words), 8):
    print('%04x=%s' % (loadOffset + i * 2, ' '.join(words[i:i+8])))

print('g%04x' % loadOffset)
