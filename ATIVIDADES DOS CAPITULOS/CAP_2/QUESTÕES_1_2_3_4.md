# EXERCÍCIO DO CAPITULO 2 #

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
            
