    org     07c00h
    mov     ax, cs
    mov     ds, ax 
    mov     es, ax 
    call    ClearScreen
    call    DispStr 
    jmp     $

ClearScreen:
    mov     ax, 0600h
    mov     bx, 0700h
    mov     cx, 0h
    mov     dx, 0184fh
    int     10h 
    ret 

DispStr:
    mov     ax, BootMessage
    mov     bp, ax 
    mov     cx, 16
    mov     ax, 01301h
    mov     bx, 000ch
    mov     dl, 0 
    int     10h 
    ret 

BootMessage:            db    "likewind"
times    510 - ($ - $$) db    0
dw       0xaa55 
