%{
   int vc=0;
   int cc=0;
%}  

%%
[aeiouAEIOU] { vc++;}
[a-zA-Z] { cc++;}
%%

int yywrap()
{
}

int main()
{
    printf("enter the string: ");
    yylex();
    printf("vowels: %d \nconsonants :%d",vc,cc);
    return 0;
}
