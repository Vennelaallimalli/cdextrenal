%{
#include<stdio.h>
int count=0,c1=0;
%}

%token digit

%%
N : L {printf("no.of bits: %d",c1);return 0;}
|L '\n';
L : L B {c1=count;}
L : B {c1=count;}
B : digit {count=count+1;}
;
%%

void main()
{
  yyparse();
}
void yyerror(char *s)
{

}



