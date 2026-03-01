# pcs-hellorld
Hellorld for PCS Cadmus Motorola 68010 based computer system

Uses GNU m68k binutils for compiling.
Builds on Unix-like platforms as-is, Windows/Mac users are on their own.

The result in out/hellorld.monitor contains the monitor program commands for entering the binary at address 0x1000 and running it.

Below is a sample run:

```
M i n i t o r   2.306
Ethernetadr 080027008067
Serialnum   8067
autoboot (hit any key to break)
?bad command
.1000=4879 0000 1014 4eb9 00ff 92e8 584f 4ef9 00ff 8014 0d0a 4865 6c6c 6f72 6c64 210d
4879 0000 1014 4eb9 00ff 92e8 584f 4ef9 00ff 8014 0d0a 4865 6c6c 6f72 6c64 210d
.1020=0a0d 0a00
0a0d 0a00 5555 5555 5555 5555 5555 5555 5555 5555 5555 5555 5555 5555 5555 5555
.g1000
4879 0000 1014 4eb9 00ff 92e8 584f 4ef9

Hellorld!

.
```

https://youtu.be/u2n3I8CcnRo
