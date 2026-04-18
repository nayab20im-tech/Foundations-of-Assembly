[org 0x100]

mov cx, 5 ;move 5 to ax reg
mov dx, 10
add cx, dx
mov dx,15
add cx,dx

mov ax, 0x4c00
int 0x21


 