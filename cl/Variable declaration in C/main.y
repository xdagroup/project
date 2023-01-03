%{
	#include <stdio.h>
	#include <stdlib.h>
	
	int yylex();
	int yyerror(char *s);
%}

%token DT ID VAL COM SEM EQU NL

%%
stmt:	S NL					{printf("Valid String! \n"); exit(0);}
;
S:	DT A SEM | DT B SEM
;
A:	ID | ID COM A
;
B:	ID EQU VAL | ID EQU VAL COM B
;
%%

#include "lex.yy.c"

int yyerror(char* s)
{
	printf("Invalid String! \n");
	exit(0);
}

int main()
{
	printf("Enter string: ");
	yyparse();
}
