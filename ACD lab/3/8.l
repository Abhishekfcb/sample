%{
	#include<stdio.h>
	int count=0;
%}

space [ \t\n]

%%
.*ab{space} {count ++;}
. ;
%%

void main()
{
	yylex();
	printf("%d\n",count);
}