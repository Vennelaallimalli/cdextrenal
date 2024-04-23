%{
#include <stdio.h>
#include "y.tab.h"
%}
%%
[0-9] {yylval=atoi(yytext); return number;}
. {return yytext[0];}
%%
int yywrap()
{
}
