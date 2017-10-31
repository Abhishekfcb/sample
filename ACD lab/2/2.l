%{
int count=0;
%}
space [ \t\n]
%%
.*com({space}) {count++;ECHO;}
.*com[\t\n] {count++;} ;

%%

main()
{
yylex();
printf("\nCount= %d\n",count);
return 0;
}
