include irvine32.inc
.data
Avar REAL8 1.0
Bvar REAL8 2.0
Cvar REAL8 3.1
Dvar REAL8 2.1
Evar REAL8 2.2
ADDRES REAL8 ?
DIVRES REAL8 ?
SUBRES REAL8 ?
MULRES REAL8 ?
MULFINAL REAL8 ?
.code
main proc



fld avar
fld bvar
fadd

fstp addres
;fld addres
;call writefloat

fld  cvar
fdiv addres
fstp divres
fld divres
;call writefloat

fld dvar
fld avar
fsub

fstp subres


;----

fld  subres
fld  evar
fmul 
fstp mulres

fld mulres
fld divres
fmul 
fstp mulfinal
fld mulfinal
call writefloat




exit
main endp
end main

