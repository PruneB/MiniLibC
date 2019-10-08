BITS 64
SECTION .text
GLOBAL	memmove:function

memmove:
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
	MOV R8B, byte[RSI + RAX]
	MOV byte[RDI + RAX], R8B
	add 	RAX, 1
	JMP		boucle

end:
	RET