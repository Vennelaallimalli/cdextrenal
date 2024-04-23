%{
#include<stdio.h>
int length;
%}

%%
[a-zA-Z0-9]+ { length=yyleng;fun(length);}
%%
fun(int l)
{
    if(yytext[0]=='A'){
       if(length==3){
          printf("%s is word with length 3",yytext);
        }
       else
      {
       printf("%s is not a word of length 3  ",yytext);
      }
    }
   else{
    printf("%s not starting with A");
   }
   
}

int yywrap() { }
int main()
{
   printf("enter the words");
   yylex();
   return 0;
}
