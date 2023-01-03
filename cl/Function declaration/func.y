%{
#include<stdio.h>
#include "y.tab.h"
%}
%token COMMA ID BUILTIN SC NL RP LP
%%
var:datatype varlist LP FUNCT RP SC NL {printf("VAlid declaration");}
|
datatype: BUILTIN;
|
varlist: ID;
|
FUNCT: FUNCT COMMA ID|FUNCT COMMA BUILTIN|BUILTIN|ID|;
%%
void yyerror(const char *str){printf("error");}
int yywrap(){return 1;}
void main()
{
	printf("enter the string\n");
	yyparse();
}

