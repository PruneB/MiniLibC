BITS 64
SECTION .text
GLOBAL	strncmp:function

strncmp:
	MOV	RAX, 0
	MOV R9, 0
	MOV R8, 0
	CMP		RDI, 0
		JE end
	CMP		RSI, 0
		JE end
	CMP		RDX, 0
		JE end
	JMP		boucle

boucle:
	CMP RAX, RDX
		JE same
	CMP RAX, RDX
		JE same
	MOV R8B, byte[RDI + RAX]
	MOV R9B, byte[RSI + RAX]
	CMP R8B, R9B
		JNE diff
	add 	RAX, 1
	JMP		boucle

diff:
	mov RAX, R8
	sub	 RAX, R9
	JMP end

same:
	mov RAX, 0
	JMP end

end:
	RET