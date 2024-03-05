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
.1000=41fa 0028 3039 00ff ff74 0240 0080 6700 fff4 1218 0241 00ff 6700 000a 33c1 00ff
41fa 0028 3039 00ff ff74 0240 0080 6700 fff4 1218 0241 00ff 6700 000a 33c1 00ff
.1020=ff76 60e0 4ef9 00ff 80aa 4865 6c6c 6f72 6c64 210d 0a00
ff76 60e0 4ef9 00ff 80aa 4865 6c6c 6f72 6c64 210d 0a00 5555 5555 5555 5555 5555
.g1000
Hellorld!

M i n i t o r   2.306
Ethernetadr 080027008067
Serialnum   8067
autoboot (hit any key to break)
?bad command
.

```
