%{
int lineno =1;
%}

line .*\n

%%
{line} {printf("%d %s", lineno++,yytext);}

%%
main()
{
yylex();
return 0;
}