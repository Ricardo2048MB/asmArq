.MODEL SMALL
.CODE
	MOV DX, 3F3FH
	SHR DL, 4H
	ADD DL, "0"
	CALL WRITE_CHAR
	MOV DL, DH
	AND DL, 0FH
	ADD DL, "A"-10
	CALL WRITE_CHAR
.EXIT
	PUBLIC WRITE_CHAR
	WRITE_CHAR PROC
	PUSH AX
	MOV AH, 02
	INT 21H
	POP AX
	RET
	WRITE_CHAR ENDP
END