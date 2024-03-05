all:	out/hellorld.monitor

out/hellorld.monitor:	hellorld.s
	mkdir -p out
	m68k-linux-gnu-as hellorld.s -m68010 -pic -a=out/hellorld.lst -o out/hellorld.elf
	m68k-linux-gnu-objcopy -O binary out/hellorld.elf out/hellorld.bin
	./bindump.py out/hellorld.bin >out/hellorld.monitor
	cat out/hellorld.monitor

clean:
	rm -f out/*
