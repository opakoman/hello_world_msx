PrintChar     equ &BB5A   

    org &1200

    ld hl,Message            ;Address of string
    Call PrintString        ;Show String to screen

    ret                ;Finished Hello World

PrintString:
    ld a,(hl)    ;Print a '255' terminated string
    cp 255
    ret z
    inc hl
    call PrintChar
    jr PrintString

Message: db 'Hello World!',255
