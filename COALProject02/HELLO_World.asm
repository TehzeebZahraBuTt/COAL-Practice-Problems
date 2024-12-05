include irvine32.inc

.data
numfour real8 4.0
numtwo real8 2.0
X real8 ?
Y real8 ?
Z real8 ?
sqry real8 ?
yz real8 ?
twox real8 ?
half_res real8 ?
intvar dword ?

inputx byte "enter value of x: ",0
inputy byte "enter value of y: ",0
inputz byte "enter value of z: ",0
display_pls_ans byte "(-y+sqrt(y^2-4xz))/2x= ",0
display_mis_ans byte "(-y-sqrt(y^2-4xz))/2x= ",0
img byte "imaginary num exist",0

.code
main proc
mov edx,offset inputx
call writestring
call readfloat
fstp X
mov edx,offset inputy
call writestring
call readfloat
fstp Y
mov edx,offset inputz
call writestring
call readfloat
fstp Z

fld Y
fmul st(0),st(0)
fstp sqry
fld X
fld Z
fmul st(0),st(1)
fld numfour
fmul st(0),st(1)
fstp yz
fld yz
fld sqry
fsub st(0),st(1)
fstp half_res
fld half_res

fistp intvar
mov eax,intvar
cmp eax,0
jl imaginary_part

fld half_res
fsqrt
fstp half_res
fld X
fld numtwo
fmul st(0),st(1)
fstp twox
fld half_res
fld Y
fchs 
fadd st(0),st(1)
fdiv twox
mov edx,offset display_pls_ans
call writestring
call writefloat
call crlf
fld half_res
fld Y
fchs 
fsub st(0),st(1)
fdiv twox
mov edx,offset display_pls_ans
call writestring
call writefloat
call crlf
jmp code_end
imaginary_part:
mov edx,offset img
call writestring

code_end:
exit
main endp
end main