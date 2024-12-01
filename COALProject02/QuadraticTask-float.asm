include irvine32.inc
.data
promptA byte "Enter value of A",0
promptB byte "Enter value of B",0
promptC byte "Enter value of C",0
Aval real8 ?
Bval real8 ?
Cval real8 ?
DescVal real8 ?
Bsquare real8 ?
ACmul real8 ?
val4 real8 4.0
val0 real4 0.0
ErrorMsg byte "desc is less then zero ",0
SuccessMsg byte "desc is greater or equal to zero ",0
upparVal real8 ?
val2 real8 2.0

positiveSign byte "                When + is considered ",0
negativeSign byte "                when - is considered ",0
.code
main proc

COMMENT &

varified for the values 
a=3.8
b=55.8
c=2.0

for poitive ans is -0.1366
for negative ans is -55.66345

&

mov edx,offset promptA
call writestring
call readfloat
fstp Aval


mov edx,offset promptB
call writestring
call readfloat
fstp Bval


mov edx,offset promptC
call writestring
call readfloat
fstp Cval

fld Bval
fld Bval
fmul
fstp Bsquare

fld Aval
fld Cval
fmul
fstp ACmul

fld acmul
fld val4
fmul
fstp acmul

fld bsquare
fld acmul
fsub
fstp descVal

fld val0   ;st(1)=0
fld descVal ;st(0)=>b*b - 4ac 
fcomi st(0),st(1)

jnb Quadratic
jb displayError
jmp codeEnd

Quadratic:
mov edx,offset SuccessMsg
call writestring
call crlf
;-b+sqrt(b*b-4ac)/2   use fchs to change sign of b


mov edx,offset positiveSign
call writestring
call crlf
fld Bval                ;st(1) b
fchs                   ; -=>+  ,+=>-
fld descval            ;st(0) bsquare-4ac
fsqrt                  ;sqrt(st(0))

fadd
fstp upparVal

;-----------
fld val2
fld Aval

fmul 
fstp val2

;-----------




fld upparVal
fld val2
fdiv
call writefloat
;-------------
call crlf
mov edx,offset negativeSign
call writestring
call crlf

fld Bval                ;st(1) b
fchs                   ; -=>+  ,+=>-
fld descval            ;st(0) bsquare-4ac
fsqrt                  ;sqrt(st(0))

fsub
fstp upparVal

fld upparVal
fld val2
fdiv
call writefloat



;-------------

jmp codeEnd
displayError:
mov edx,offset ErrorMsg
call writestring


codeEnd:
exit
main endp
end main