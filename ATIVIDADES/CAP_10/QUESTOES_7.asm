; Correção: 0,5
          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG
          .data
in1fmt    byte    "%f", 0
msg0fmt   byte    0Ah,"%s", 0
msg1fmt   byte    0Ah,"%s%6.4f",0Ah,0Ah, 0
msg0      byte    "Enter a float for x: ", 0
msg3      byte    "Enter a float for y: ", 0
msg1      byte    "x is greater than y", 0
msg2      byte    "x less than y", 0
msg4      byte    "x is equal to y"
x         real4   ?
y         real4   ?
          .code
main      proc
          INVOKE printf, ADDR msg0fmt, ADDR msg0
          INVOKE scanf, ADDR in1fmt, ADDR x
          INVOKE printf, ADDR msg0fmt, ADDR msg3
          INVOKE scanf, ADDR in1fmt, ADDR y
if01:     fld x
          fld y
          fcomip st(0), st(1)
          jae else01
then01:   INVOKE printf, ADDR msg0fmt, ADDR msg1
          jmp endif01
else01:   nop

if02:     fld x
          fld y
          fcomip st(0), st(1)
          ja then02
          jb else02
else02:   INVOKE printf, ADDR msg0fmt, ADDR msg4
          jmp endif02
then02:   INVOKE printf, ADDR msg0fmt, ADDR msg2
endif01:  nop
endif02:  nop

          ret
main      endp
          end
