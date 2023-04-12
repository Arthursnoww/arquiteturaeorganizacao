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
