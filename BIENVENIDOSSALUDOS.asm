.MODEL SMALL
.STACK
.DATA
	MENSAJE DB "Bienvenidos","$"
	TEXTO DB "Saludos","$"
.CODE
	MOV AX,@DATA
	MOV DS,AX
	
	MOV AH,09H
	LEA DX,TEXTO
	INT 21H
	
	LEA DX, MENSAJE
	INT 21H
.EXIT
END
	
	

