.model small

b1 macro n, k
	i=1
	rept k
		db i
		i=i+1
	endm
	rept n-k
		db 0
	endm
endm 

b2 macro n, k
	i=1
	rept n
		
		if k+1-i
			db i
			i=i+1
		else
			db 1
		endif
	endm
endm 
	
.code

	

	mov ah, 76
	int 33
	b2 5, 2
end