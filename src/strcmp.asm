BITS 64
SECTION .text
GLOBAL	strcmp:function

strcmp:
	MOV	RAX, 0
	MOV r9, 0
	MOV r8, 0
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
	add 	RAX, 1
	JMP		boucle

diff:
	mov rax, r8
	sub	 rax, r9
	JMP end

same:
	mov RAX, 0
	JMP end

end:
	RET