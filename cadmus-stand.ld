ENTRY(_start)

SECTIONS
{
	. = 0x1000;

        .boot : {
                KEEP(*(.boot))
        }

	.text : {
		*(.text)
		*(.text.*)
	}

	.rodata : {
		*(.rodata)
		*(.rodata.*)
		. = ALIGN(2);
	}

	.data : {
		*(.data)
		*(.data.*)
		. = ALIGN(2);
	}

	.bss : {
		*(.bss)
		*(.bss.*)
		. = ALIGN(2);
	}
}
