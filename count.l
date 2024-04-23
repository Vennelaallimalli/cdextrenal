%{
   int lc=0;
   int sc=0;
   int tc=0;
   int ch=0;
   int c=0;
   int wc=0;
%}

%%
\n { lc++;}
[ ]+ { sc++;} //in brackets space is important
\t { tc++;}
. { ch++,c++;}
[a-zA-Z0-9]+ { wc++,c=c+yyleng;}
%%

int yywrap() { }
int main()
{
   printf("enter the string \n");
   yylex();
   printf("lines count %d \n",lc);
   printf("spaces count  %d \n",sc);
   printf("tabs count %d \n",tc);
   printf("chars count %d \n",c);
   printf("words count %d \n",(wc+ch));
}
