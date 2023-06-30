            .686
            .model  flat, c
            .stack  100h
printf      PROTO   arg1:Ptr Byte, printlist:VARARG
scanf       PROTO   arg2:Ptr Byte, inputlist:VARARG
            .data
msg1fmt     byte    "%s", 0
in1fmt      byte    "%s", 0
msg1        byte    "Insira a palavra: ", 0
msg2        byte    "A string e palindroma.", 0
msg3        byte    "A string nao e palindroma.", 0
arraystr    byte    100 dup(?)
lenght      sdword  10
found       sdword  ?
            .code 
main        proc
            INVOKE printf, ADDR msg1fmt, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR arraystr
            lea esi, arraystr
            lea edi, arraystr + 9
            mov eax, 0
            mov found, eax
            .while(eax != 10)
                mov ecx, 5
                .repeat
                    mov al, [edi]
                    .if(al == " ")
                        .while(al == " ")
                            dec edi
                            mov al, [edi]
                        .endw
                    .endif
                    mov al, [edi]
                    mov ah, [esi]
                    .if(al != ah)
                        mov found, -1
                    .endif
                .untilcxz
                add esi, 5
                add edi, 14
                .if(found <= -1)
                        INVOKE printf, ADDR msg1fmt, ADDR msg3
                    .else
                        INVOKE printf, ADDR msg1fmt, ADDR msg2
                .endif
                add eax, 1 
            .endw
            ret
main        endp
            end
