%{
/* Definition section */
#include<stdio.h>
#include<stdlib.h>

int yylex();
int yyerror(char *s);
%}

%token A B NL

/* Rule Section */
%%
stmt: S NL { printf("valid string\n");
			exit(0); }
;
S: A S | S B |
;
%%

#include "lex.yy.c"

int yyerror(char *msg)
{
	printf("invalid string\n");
	exit(0);
}

//driver code
void main()
{
	printf("enter the string\n");
	yyparse();
}

