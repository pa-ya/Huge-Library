STKSG   SEGMENT PARA STACK 'STACK'
        DW      100 DUP (?)
STKSG   ENDS

DATASG  SEGMENT PARA PRIvate 'DATA'
        X      DW  15
        Y      DW  25
        Z      DW  ?
DATASG  ENDS

CODESG  SEGMENT PARA PRIVATE 'CODE'

MAIN    PROC    FAR

        ASSUME  DS:DATASG, CS:CODESG, SS:STKSG

        MOV     AX,DATASG ;Move the start address
        MOV     DS,AX     ;of data segment to DS


        mov     ax,offset X
        lea     Ax, X
        MOV     AX,X
        ADD     AX,Y
        MOV     Z,AX

        MOV     AX,4C00H  ;Terminate program
        INT     21H

MAIN    ENDP

CODESG  ENDS
        END  MAIN
