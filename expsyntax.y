%{
#include<stdio.h>
int yylex(void);
void yyerror(char *s);
int flag = 0;
%}

%token id '\n'
%left '+' '-'
%left '*' '/'

%%
E1 : E '\n' {printf("Valid");flag = 1;};
E : E '+' T 
| E '-' T 
| T ;
T : T '*' F 
| T '/' F 
| F ;
F : id 
;
%%

int main(void){
yyparse();
if(flag == 0) printf("Invalid");
return 0;

}
 void yyerror(char *s)
 {}
 
 /*
 user@user:~/Videos/bal/CDPrograms/SDT$ lex expsyntax.l
user@user:~/Videos/bal/CDPrograms/SDT$ yacc -d expsyntax.y
user@user:~/Videos/bal/CDPrograms/SDT$ gcc lex.yy.c y.tab.c
user@user:~/Videos/bal/CDPrograms/SDT$ ./a.out
2+3*1
Valid
2=4
=Invalid
24+
Invalid
34_4
_Invalid
34+4
Valid
*/
