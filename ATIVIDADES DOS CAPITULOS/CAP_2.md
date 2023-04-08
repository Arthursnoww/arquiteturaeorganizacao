# EXERCÍCIO DO CAPITULO 1 #

**QUESTÃO-1**

A. Correto
 	
   B. Incorreto, Quebra linha tem que ser em notação hexadecimal
    
   C. incorreto, ADDR é usado para adicionar cadeias de Caracteres no Printf, Number é o inteiro a ser exibido.
    
   D. Correto
    
   E. Incorreto, \n em assembly é utilizado em hexadecimal: 0Ah
   
   
    
**QUESTÃO-2**

A diretiva INVOKE invoca a função, como um subprograma, limpando os registradores eax, ecx e edx para utilizá-los na

passagem de parâmetros. Logo, o ideal seria atribuir valor a num2 depois do INVOKE, Por exemplo:
        
        INVOKE printf, ADDR msg1fmt, ADDR msg1, num2
	    mov num2, 5
      
**QUESTÃO-3**

    
          xb=b1byb=b2
          linha em branco
          linha em branco
          z=3
    
**QUESTÃO-4**

 
        
            (linha em branco)
            TheBfirstBnumberBisB5,BbutBtheBsecondBnumberBisB7,B
            (linha em branco)
            whileBtheBthirdBnumberBisB11
            (linha em branco)
            (linha em branco)
            
SAÍDA FORMAL DO  PROGRAMA:



	The first number is 5, but the second number is 7,

	while the third number is 11
	
	





**QUESTÃO-5**

                    .686
                    .model  flat, c 
                    .stack  100h
            printf  PROTO arg1:Ptr Byte, printlist:VARARG 
                    .data
            msg1fmt byte    0Ah,"%d%s%d%s%d",0Ah,0Ah,0
            msg1    byte    " + ",0
            msg2    byte    " = ",0
            x       sdword  1
            y       sdword  2
            z       sdword  3
                    .code
            main    proc
                    INVOKE printf, ADDR msg1fmt, x, ADDR msg1, y, ADDR msg2, z
                    ret 
            main    endp
                    end


**QUESTÃO-6**

            .686
            .model  flat, c 
            .stack  100h
    printf  PROTO arg1:Ptr Byte, printlist:VARARG 
    scanf   PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
    in1fmt  byte    "%d", 0
    in2fmt  byte    "%d", 0
    msg1fmt byte    0Ah,"%s",0
    msg2fmt byte    0Ah,"%s",0
    msg3fmt byte    0Ah,"%s",0Ah,0Ah,0
    msg4fmt byte    "%s%d%s%d", 0Ah,0Ah,0

    msg1    byte   "Enter a value for num1: ",0
    msg2    byte   "Enter a value for num2: ",0
    msg3    byte    "num1        num2",0
    msg4    byte    " ",0
    msg5    byte    "          ",0

    num1    sdword  ?
    num2    sdword  ?
            .code
    main    proc
            INVOKE printf, ADDR msg1fmt, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR num1
            INVOKE printf, ADDR msg2fmt, ADDR msg2
            INVOKE scanf, ADDR in2fmt, ADDR num2
            INVOKE printf, ADDR msg3fmt, ADDR msg3
            INVOKE printf, ADDR msg4fmt, ADDR msg4, num1, ADDR msg5, num2
            ret 
    main    endp
            end
            
            
            
            
**QUESTÃO-7**

*CODIGO EM C:*

	#include <stdio.h>

	int main() {
	    int num1, num2, num3;

	    
	    printf("Enter a number: ");
	    scanf("%d", &num1);
	    
	    printf("Enter a larger number: ");
	    scanf("%d", &num2);

	    printf("Enter an even larger\nnumber: ");
	    scanf("%d", &num3);
	    
	   
	    printf("\n\n%d < %d < %d \n\n\n", num1, num2, num3);
	    printf("%d > %d > %d\n\n", num3, num2, num1);
	    return 0;
  }

*CODIGO EM MASM:*

            .686
            .model  flat, c 
            .stack  200h
    printf  PROTO arg1:Ptr Byte, printlist:VARARG 
    scanf   PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
    in1fmt  byte    "%d", 0
    in2fmt  byte    "%d", 0
    in3fmt  byte    "%d", 0
    msg1fmt byte    "%s",0
    msg2fmt byte    "%s",0
    msg3fmt byte    "%s",0
    msg4fmt byte    0Ah,0Ah,"%d%s%d%s%d",0Ah,0Ah,0Ah,0
    msg5fmt byte    "%d%s%d%s%d",0Ah,0
    msg6fmt byte	0Ah,"%s",0


    msg1    byte    "Enter a number: ",0
    msg2    byte    "Enter a larger number: ",0
    msg3    byte    "Enter an even larger",0
    msg4    byte    " < ",0
    msg5    byte    " > ",0
    msg6	byte	"number: ",0
    num1    sdword  ?
    num2    sdword  ?
    num3    sdword  ?
            .code
    main    proc
            INVOKE printf, ADDR msg1fmt, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR num1
            INVOKE printf, ADDR msg2fmt, ADDR msg2
            INVOKE scanf, ADDR in2fmt, ADDR num2
            INVOKE printf, ADDR msg3fmt, ADDR msg3
            INVOKE printf, ADDR msg6fmt, ADDR msg6
            INVOKE scanf, ADDR in3fmt, ADDR num3
            INVOKE printf,ADDR msg4fmt, num1, ADDR msg4, num2, ADDR msg4, num3
            INVOKE printf,ADDR msg5fmt, num3, ADDR msg5, num2, ADDR msg5, num1
            ret 
    main    endp
      end


**QUESTÃO-8**


            .686
            .model  flat, c 
            .stack  200h
    printf  PROTO arg1:Ptr Byte, printlist:VARARG 
    scanf   PROTO arg2:Ptr Byte, inputlist:VARARG
            .data
    in1fmt  byte    "%d", 0
    in2fmt  byte    "%d", 0

    msg1fmt byte    "%s",0
    msg2fmt byte    "%s",0
    msg3fmt byte    0Ah,0Ah,"%s", 0Ah,0   
    msg4fmt byte    "%s%d%s", 0Ah, 0


    msg1    byte    "Enter a number: ",0
    msg2    byte    "Numbers",0
    msg3    byte    "   ",0

    num1    sdword  ?
    num2    sdword  ?

            .code
    main    proc
            INVOKE printf, ADDR msg1fmt, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR num1
            INVOKE printf, ADDR msg2fmt, ADDR msg1
            INVOKE scanf, ADDR in2fmt, ADDR num2
            INVOKE printf, ADDR msg3fmt, ADDR msg2
            INVOKE printf, ADDR msg4fmt, ADDR msg3, num1, ADDR msg3
            INVOKE printf, ADDR msg4fmt, ADDR msg3, num2, ADDR msg3
            ret 
    main    endp
            end
