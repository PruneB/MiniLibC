BITS 64
SECTION .text
GLOBAL	strcspn:function

strcspn:
	MOV	RAX, 0
	CMP		RDI, 0
		JE end
	CMP		RSI, 0
		JE end
	MOV R8B, byte[RSI + 0]
	JMP		boucle

boucle:
	CMP byte[RDI + RAX], R8B
		JE end
	CMP byte[RDI + RAX], 0
		JE null
	add 	RAX, 1
	JMP		boucle

end:
	RET

null:
	MOV RAX, 0
	RET