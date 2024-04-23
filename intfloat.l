%{
#include<stdio.h>
int numint=0;
int numfloat=0;
%}

%%
[0-9]+"."[0-9]+ { ECHO;printf("float \n"); numfloat++;} 
[0-9]+ { ECHO; printf(" integer \n");numint++;}     
%%

int yywrap()
{ }

int main()
{
   printf("enter the inputs");
   yylex();
   printf("integers %d \n",numint);
   printf("floats %d",numfloat);
}
