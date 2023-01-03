%{
	#include <stdio.h>
	#include <stdlib.h>
	
	int yylex();
	int yyerror(char *s);
%}

%token A B C NL

%%
stmt:	S NL		{printf("Valid String! \n"); exit(0);}
;
S:	P Q |
;
P:	A P B |
;
Q:	B Q C |
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
