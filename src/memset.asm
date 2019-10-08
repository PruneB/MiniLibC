BITS 64
SECTION .text
GLOBAL	memset:function

memset:
	MOV	RAX, 0
	CMP		RDI, 0
		JE end
	CMP		RSI, 0
		JE end
	CMP		RDX, 0
		JE end
	JMP		boucle

boucle:
	CMP RAX, RDX
		JE end
	MOV byte[RDI + RAX], SIL
	add 	RAX, 1
	JMP		boucle

end:
	RET