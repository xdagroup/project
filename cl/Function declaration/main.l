%{

%}

%%
int|float|char|void		{return DT;}
[a-zA-Z_]+[0-9]*			{return NAME;}
\)					{return BRCLOSE;}
\(					{return BROPEN;}
,					{return SEP;}
;					{return TERM;}
\n      				{return NL;}
. 					{return yytext[0];}
%% 
