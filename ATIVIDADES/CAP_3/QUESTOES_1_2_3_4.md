# EXERCÍCIO DO CAPITULO 3 #


**QUESTÃO-01**

> Correção: 0,4

a) Incorreta, não precisa do ", 1"

b) Correto

c) Incorreta, não é possivel somar dados da memória com dados da memória

> Correção: _idiv_ só recebe registrador ou memória.

d) Correto

e) incorreta, é necessário colocar o valor de number num registrador para realizar a operação

f) Correto



**QUESTÃO-02**

> Correção: 0,4

a)

    mov eax, 3
    imul number
    mov product, eax

> Correção: não vimos as instruções _xor_ e _div_ ainda.

b) 

    mov eax, number
    mov ebx amount
    xor edx, edx
    div ebx
    mov result, edx
   
c)
  
    mov eax, number
    mov ebx, 2
    cdq
    idiv ebx
    mov answer, eax

d)

    mov eax, 4
    sub eax, number
    mov difference, eax
    


**QUESTÃO-03**

> Correção: 0,3

a) 

     mov eax, x
     imul y
     mov ecx, eax
     mov eax, z
     mov ebx, 2
     imul ebx
     add ecx, eax
     mov x, ecx

> Correção: A divisão tem precedência maior. 

b) 
  
     mov eax, b
     sub eax, c
     mov ebx, 3
     cdq
     idiv ebx
     mov a, eax
   
c) 

     mov eax, num3
     imul num4
     mov ebx, eax
     mov eax, num1
     cdq
     idiv num2
     sub eax, ebx
     mov total, eax
   
d)
  
     mov eax, s
     neg eax
     mov ebx, t
     add ebx, 1
     add eax, ebx
     mov r, eax
     mov t, ebx

> Correção: _imul_ não tem dois operandos.

e)

     mov eax, i
     sub eax, j
     imul eax, k
     mov ebx, n
     imul ebx, eax
     mov m, eax
   

> Correção: _cqd_ antes de _idiv_.


f) 

     mov eax, a
     sub eax, b
     mov ebx, c
     mov edx, d
     idiv edx
     imul eax, e
     add eax, ebx
     mov q, eax
   
**QUESTÃO-04**

> Correção: 0,5

a) 
      
      dec i

b) 


     mov eax, k
     add eax, 1
     mov k, eax
     mov ebx, m
     sub eax, ebx
     mov j, eax
   
c) 

     mov eax, x
     add eax, y
     neg eax
     mov z, eax
  
d) 

     mov eax, b
     add eax, 1
     mov b, eax
     mov ebx, c
     add ebx 1
     mov c, ebx
     sub eax, ebx
     mov a, eax
   
e)

     mov ebx, z
     dec ebx
     mov z, ebx
     mov eax, y
     neg eax
     add eax, ebx
     mov x, eax
