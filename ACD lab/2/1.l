%{
int count=0;
%}
alpha [a-zA-Z]
digit [0-9]
space [ \t\n]
start ^a

%%
{space}(a|A)({alpha}|{digit})* {count++;}
. ;
%%

void main()
{
yylex();
printf("count=%d\n",count);
}
