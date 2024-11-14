include irvine32.inc

.data
arr byte 10,20,30,40

.code
main proc

mov ecx,4
mov esi,offset arr
outer:

   push ecx
       mov edi,3
	    inner:

		  movzx eax, byte ptr [esi+1*edi]
		  movzx ebx,byte ptr [esi+2*edi]
		  cmp eax,ebx   ;12>11   temp=j    j=j+1    j+1=temp

		  jg  swap
		  jng inner

		   

	    loop inner

   pop ecx

loop outer


exit
main endp
end main