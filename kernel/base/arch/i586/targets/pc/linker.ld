ENTRY (loader)

SECTIONS {
	. = 0x00100000;

	.__mbHeader : {
		*(.__mbHeader)
	}

	.text ALIGN (0x1000) : {
		*(.text)
	}

	.rodata ALIGN (0x1000) : {
		*(.rodata*)
	}

	.data ALIGN (0x1000) : {
		*(.data)
	}

	.bss : {
		sbss = .;
		*(COMMON)
		*(.bss)
		ebss = .;
	}

	.debug_syms ALIGN (0x1000) : {
		*(.debug_syms)
	}

	end = .; _end = .; __end = .;
}
