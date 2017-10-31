%{
	#include<stdio.h>
	int s=0,p=0;
%}

sc scanf
pr printf

%%
{sc} {printf("readf");
	s++;}

{pr} {printf("writef");
	p++;}
%%

void main()
{
	yylex();
}