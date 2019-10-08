BITS 64
SECTION .text
GLOBAL	strlen:function

strlen:
	MOV	RAX, 0
	CMP		RDI, 0
		JE end
	JMP		boucle

boucle:
	CMP byte[RDI + RAX], 0
		JE end
	add 	RAX, 1
	JMP		boucle

end:
	RET


