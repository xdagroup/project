%{
	#include <stdio.h>
	#include <stdlib.h>
	
	int yylex();
	int yyerror(char *s);
%}

%token FOR BR_OPEN COND TERM BR_CLOSE BLOCK NL

%%
stmt:	S NL		{printf("Valid String! \n"); exit(0);}
;
S:	FOR BR_OPEN COND TERM COND TERM COND BR_CLOSE P
;
P:	TERM | BLOCK
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
