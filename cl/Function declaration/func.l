%{
#include<stdio.h>
#include "y.tab.h"
%}
%%
void|int|float|char return BUILTIN;
, return COMMA;
; return SC;
\n return NL;
\) {return RP;}
\( {return LP;}

[a-zA-Z0-9]* return ID;
%%
