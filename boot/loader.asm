org     0x0100


mov     si,msg_loadernow
call    temp_print
;-------------------------------------------------------------------------
temp_print:
disp0:
    lodsb
    or      al,al
    jz      done0
    mov     ah,0x0e
    mov     bx,15
    int     0x10
    jmp     disp0
done0:
    ret
;-------------------------------------------------------------------------
msg_loadernow:
    db  "loader found",13,10,0

