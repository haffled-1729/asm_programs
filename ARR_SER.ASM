DATA SEGMENT
  STRING1 DW 1001H,2002H,3003H,4004H,5005H
  SE DW 2002H
DATA ENDS

CODE SEGMENT
        ASSUME CS:CODE, DS:DATA
 START: MOV AX, DATA
        MOV DS, AX
        MOV DL, 00H
        MOV DH, 05H
        MOV AX, SE
        LEA SI, STRING1
        MOV CL, 05H
        UP:
        MOV BX, [SI]
        CMP AX, BX
        JZ FO
        ADD SI,02H
        DEC CL
        JNZ UP
        JMP END1
  FO:   MOV DL, 01H
        SUB DH, CL
        INC DH
  END1: HLT
        CODE ENDS
        END START
