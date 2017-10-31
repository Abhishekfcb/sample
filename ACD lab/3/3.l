%{
#include<stdio.h>
int length=0;
int i,j;
char s[100];
%}

alpha [A-Z]
al [a-z]

%%
{alpha} {if(yytext[0]+5>'Z')
			printf("%c",yytext[0]+5-'Z'+'A'-1);
		else
			printf("%c",yytext[0]+5);}
{al} {if(yytext[0]+5>'z')
			printf("%c",yytext[0]+5-'z'+'a'-1);
		else
			printf("%c",yytext[0]+5);}
%%