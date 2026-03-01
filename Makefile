all:	hellorld.monitor

build:
	mkdir -p build

build/%.o:	%.s Makefile | build
	m68k-linux-gnu-as $< -m68010 -o $@

build/hellorld.elf:	build/hellorld.o cadmus-stand.ld | build
	m68k-linux-gnu-ld -g -z noexecstack -nostdlib -T cadmus-stand.ld $< -o $@

build/hellorld.bin:	build/hellorld.elf | build
	m68k-linux-gnu-objcopy -O binary $< $@

hellorld.monitor:	build/hellorld.bin | build
	./bindump.py $< 0x1000 0x0 | tee $@

list:	hellorld.elf
	m68k-linux-gnu-objdump -j .boot -d $<
	m68k-linux-gnu-objdump -W -j .rodata -j .data -s $<

clean:
	rm -rf build
