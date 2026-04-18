[org 0x100]

mov cx, [0x100+0]
mov dx, [0x100+2]
add cx, dx
mov dx,[0x100+4]
add cx,dx
mov [0x100+6], cx


mov ax, 0x4c00
int 0x21
