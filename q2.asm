[org 0x100]

mov bp , arr
mov si , 18

loop:
	add ax , [bp+si]
	sub si , 2
	cmp si , 0
	jge loop

mov [sum] , ax
end : mov ax , 0x4c00
int 0x21

arr : dw 1,2,3,4,5,6,7,8,9,10
sum : dw 0
