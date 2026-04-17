[org 0x100]

mov bx , arr
mov cx , 5

outer_loop:
	mov si , 0
	cmp cx, 0
	jbe end

inner_loop:
	mov ax , [bx+si]
	mov dx , [bx+si+2]
	cmp ax , dx
	jbe skip_swap

mov [bx+si] , dx
mov [bx+si+2] , ax

skip_swap:
	add si , 2
	cmp si , 12
	jb inner_loop

sub cx , 1
jmp outer_loop

end : mov ax , 0x4c00
int 0x21

arr : dw 6,5,4,3,2,1