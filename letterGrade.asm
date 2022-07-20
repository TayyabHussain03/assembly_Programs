include irvine32.inc
.DATA
MSG1 BYTE "ENTER YOUR SCORE: ",0
MSG2 BYTE "Your Grade is: ",0
.CODE
MAIN PROC

MOV EDX,OFFSET MSG1
CALL WRITESTRING
CALL READINT
CMP EAX,90
JGE gradeA
CMP EAX,80
JGE gradeB
CMP EAX,70
JGE gradeC
CMP EAX,60
JGE gradeD
JMP gradeF

gradeA:

MOV AL,'A'
JMP result

gradeB:

MOV AL,'B'
JMP result

gradeC:

MOV AL,'C'
JMP result

gradeD:

MOV AL,'D'
JMP result

gradeF:

MOV AL,'F'
JMP result

result:

MOV EDX,OFFSET MSG2
CALL WRITESTRING
CALL WRITECHAR

QUIT:
CALL CRLF
EXIT
MAIN ENDP
END MAIN