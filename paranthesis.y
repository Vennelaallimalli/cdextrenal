%{
#include<stdio.h>
int f=0;
%}

%token '(' ')' '\n'
%%

S : L'\n' {printf("valid\n");f=1;return 0;}
L : '(' L ')' L {}
  | {}
  ;
%%

void main()
{
yyparse();
}

void yyerror(char *s)
{
printf("invalid\n");
}
