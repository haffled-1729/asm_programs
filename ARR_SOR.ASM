DATA SEGMENT
   STRING1 DW 003AH,002AH,001AH,0000H,3A00H        
DATA ENDS

CODE SEGMENT
  ASSUME CS:CODE, DS:DATA
  START: MOV AX, DATA
         MOV DS, AX
         MOV DL, 04H
   L2:   MOV CL, 04H
         LEA SI, STRING1
  BACK:  MOV AX, [SI]
	 INC SI
	 INC SI
         CMP AX, [SI]
         JC L1
         XCHG AX, [SI]
         MOV [SI]-02H, AX
    L1:  DEC CL
         JNZ BACK
         DEC DL
         JNZ L2
         HLT
CODE ENDS
         END START
