minitor_entry = 0xff8014
minitor_printf = 0xff92e8

	.global _start

	.text
	.org	0x1000

_start:
	pea	hellorld_message
	jsr	minitor_printf
	add	#4,%sp

	jmp	minitor_entry

hellorld_message:
	.asciz	"\r\nHellorld!\r\n\r\n"

	# Force full-word segment size for bindump.py
	.p2align	1
