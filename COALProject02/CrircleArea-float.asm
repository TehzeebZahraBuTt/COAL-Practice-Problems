include irvine32.inc

.data
radius real8 ?
res real8 ?
radiussq real8 ?
.code
main proc

call readfloat
fstp radius
fld radius
fld radius
fmul 
fstp res

fldpi
fld res
fmul 
call writefloat

exit
main endp
end main