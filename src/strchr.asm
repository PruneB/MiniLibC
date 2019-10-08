BITS 64
SECTION .text
GLOBAL	strchr:function

strchr:
	MOV	RAX, 0
	CMP		RDI, 0
		JE end
	CMP		RSI, 0
		JE end
	JMP		boucle

boucle:
	CMP byte[RDI + RAX], SIL
		JE end
	CMP byte[RDI + RAX], 0
		JE null
	add 	RAX, 1
	JMP		boucle

end:
	add RAX, RDI
	RET

null:
	MOV RAX, 0
	RET