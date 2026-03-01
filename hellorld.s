	minitor_entry = 0xff8014
	minitor_printf = 0xff92e8

	.section        .boot, "ax"
	.global		_start

_start:
	pea	hellorld_message
	jsr	minitor_printf
	add	#4, %sp

	jmp	minitor_entry

	.section	.rodata

hellorld_message:
	.asciz	"\r\nHellorld!\r\n\r\n"
