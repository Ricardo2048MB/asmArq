.MODEL SMALL
.STACK
.DATA
	M1 DB "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia vo","$"
	M2 DB "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia vo","$"
.CODE
	MOV AX,@DATA
	MOV DS,AX
	MOV AH,09H
	
	LEA DX,TEXTO
	INT 21H
	
	LEA DX, MENSAJE
	INT 21H
	
	CALL DESPLAZA_PANTALLA
	
.EXIT

PUBLIC DESPLAZA_PANTALLA
DESPLAZA_PANTALLA PROC
	;SALVACIONES
	PUSH AX
	PUSH BH
	PUSH CX
	PUSH DX
	;DESPLAZAR PANTALLA
	MOV AL, 0;EL CERO AQUI SIGNIFICA QUE TODA EL AREA SE DESPLAZA
	;LAS DOS PARTES DE CX INDICAN LAS COORDENADAS DE P1
	MOV CH, 0
	MOV CL, 0
	;LAS DOS PARTES DE DX INDICAN LAS COORDENADAS DE P2 JAJA
	MOV DH, 1
	MOV DL, 125
	COMMENT !
	HAY QUE RECORDAR QUE LAS COORDENADAS TIENEN ORIGEN EN LA ESQUINA 
	SUPERIOR IZQUIERDA DE LA PANTALLA Y QUE EL SEMIEJE HORIZONTAL POSITIVO
	SE EXTIENDE HACIA LA DERECHA, Y EL SEMIEJE VERTICAL POSITIVO SE EXTIENDE 
	HACIA ABAJO.
	!
	MOV BH, 0;ESTO HARA QUE EL FONDO Y EL PRIMER PLANO SEAN NEGROS
	COMMENT !
	BH ESTA CONFORMADO POR 8 BITS. LOS 4 BITS MAS ALTOS DEFINEN EL COLOR
	DE FONDO; LOS MAS BAJOS DEFINEN EL COLOR DEL PRIMER PLANO.
	!
	;RESTAURACIONES
	POP DX
	POP CX
	POP BH
	POP AX
	RET
DESPLAZA_PANTALLA ENDP


END