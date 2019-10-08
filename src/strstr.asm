BITS 64
SECTION .text
GLOBAL	strstr:function

strstr:
	MOV	RAX, 0
	MOV R8, 0
	MOV R9, 0
	CMP		RDI, 0
		JE end
	CMP		RSI, 0
		JE end
	JMP		boucle

boucle:
	CMP byte[RDI + RAX], 0
		JE same
	CMP byte[RSI + RAX], 0
		JE same
	MOV R8B, byte[RDI + RAX]
	MOV R9B, byte[RSI + RAX]
	CMP R8B, R9B
		JNE diff
	ADD 	RAX, 1
	JMP		boucle

diff:
	MOV RAX, 0
	JMP end

same:
	MOV RAX, RDI
	JMP end

end:
	RET