%{
#include <stdio.h>
int len = 0;
void fun(int len);
%}
%%
[a-zA-Z0-9]+ {len = yyleng;fun(len);}
%%
void fun(int len)
{
 if(yytext[0] == 'A' || yytext[0]=='a')
 {
   if(len == 3)
     printf("%s is starting with A and length is 3\n ",yytext);
   else
      printf("%s is starting with A and length is not 3 \n",yytext);
     
 }
 else
    printf("%s is not starting with A \n",yytext);
}
int yywrap()
{
  return 1;
}
void main()
{
  printf("enter input:\n");
  yylex();
}
