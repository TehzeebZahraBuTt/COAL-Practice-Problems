include irvine32.inc

.data
num1 real8 2.2
num2 real8 3.3
num1sq real8 ?
num2sq real8 ?
.code
main proc

fld num1
fld num1

fmul 
fstp num1sq
fld num1sq
;call writefloat

fld num2
fld num2

fmul 
fstp num2sq
fld num2sq
;call writefloat

fld num1sq   ;st(1)
fld num2sq    ;st(0)

fadd
call writefloat



exit
main endp
end main