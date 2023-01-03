%{
	#include<stdio.h>
	#include<stdlib.h>
	
	int num1=0, num2=0;
	char op = '\0';
%}
  

%%
[0-9]* {
		num2 = atoi(yytext);
		
		switch(op){
			case '\0':
				num1 = num2;
				break;
			case '+':
				num1 += num2;
				break;
			case '-':
				num1 -= num2;
				break;
			case '*':
				num1 *= num2;
				break;
			case '/':
				num1 /= num2;
				break;
			default:
				printf("Wrong operation");
		}	
	}
	
[+\-*/] {op = yytext[0];}
\n {return 0;}
%%
  
int yywrap(){}
  
int main()
{   
    printf("Enter the input for calculation: ");
    yylex();
    
    printf("Ans: %d\n", num1);
  
    return 0;
}
