%{
	#include <stdio.h>
	#include <stdlib.h>
	
	int yylex();
	int yyerror(char *s);
%}

%token DT NAME BROPEN SEP TERM BRCLOSE BLOCK NL

%%
stmt:	S NL		{printf("Valid String! \n"); exit(0);}
;
S:	DT NAME BROPEN P BRCLOSE TERM
;
P:	DT SEP P | DT |
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
