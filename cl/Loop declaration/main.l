%{

%}

%%
for					 {return FOR;}
\(					 {return BR_OPEN;}
[a-zA-Z0-9\+\-\*\/\=\>\<\[\]]* {return COND;}
;					 {return TERM;}
\)					 {return BR_CLOSE;}
\{.*\}				 {return BLOCK;}
\n      				 {return NL;}
. 					 {return yytext[0];}
%% 
