; Correção: 0,3. O _l_ deve ser maiúsculo na _string_ de formatação.
          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG
          .data
in1fmt    byte    "%lf", 0
msg0fmt   byte    0Ah,"%s", 0
msg1fmt   byte    0Ah,"%s%6.4lf",0Ah,0Ah, 0
msg0      byte    "Enter a long double for x: ", 0
msg1      byte    "The long double in y is: ", 0
x         real10   ?
y         real10   ?
          .code
main      proc
          INVOKE printf, ADDR msg0fmt, ADDR msg0
          INVOKE scanf, ADDR in1fmt, ADDR x
          fld x
          fstp y
          INVOKE printf, ADDR msg1fmt, ADDR msg1, y
          ret 
main      endp
end
