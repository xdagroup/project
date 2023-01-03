%{
%}

%%
int|char|double|float|bool		{return DT;}
[a-zA-Z_]*[0-9]*			{return ID;}
[0-9]+|[true|false]|[a-zA-Z]	{return VAL;}
,					{return COM;}
=					{return EQU;}
;					{return SEM;}
\n      				{return NL;}
%%
