BITS 64
SECTION .text
GLOBAL	rindex:function

rindex:
	MOV	RAX, 0
	CMP		RDI, 0
		JE end
	CMP		RSI, 0
		JE end
	JMP		boucle

boucle:
	CMP byte[RDI + RAX], 0
		JE endString
	add 	RAX, 1
	JMP		boucle

end:
	add RAX, RDI
	RET

endString:
	CMP RAX, 0
		JE null
	CMP byte[RDI + RAX], SIL
		JE end
	sub 	RAX, 1
	JMP		endString

null:
	MOV RAX, 0
	RET