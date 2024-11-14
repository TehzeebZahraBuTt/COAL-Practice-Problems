include irvine32.inc

.data
num1 REAL10 1.7
num2 Real10 2.8
result real10 ?
.code
main proc


fld num1  ;st(1)
fld num2  ;st(0)

fadd
fstp result  ;st(0) se pop kr k result main push krta ha
fld result
call writefloat


exit
main endp
end main