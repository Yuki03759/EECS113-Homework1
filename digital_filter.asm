ORG 50H
ARRAY1: DB 10, 5, 120, 255, 240, 70, 40, 255; array a
ORG 60H
ARRAY2: DB 5, 20, 2, 50, 100, 240, 250, 200; array x
ORG 0
MOV R0, #4H ; set the filter degree, N, here

; declaration
MOV R3, #0H
MOV R4, #0H
MOV R5, #0H

AGAIN: DEC R0

MOV A, R0
MOV DPTR, #ARRAY1
MOVC A, @A+DPTR
MOV B, A
MOV A, R0
MOV DPTR, #ARRAY2
MOVC A, @A+DPTR

MUL AB

ADD A, R3
MOV R3, A

MOV A, B

JNC NC_1
ADD A, #1H

NC_1:
ADD A, R4
MOV R4, A

JNC NC_2
INC R5

NC_2:
MOV A, R0
JNZ AGAIN





