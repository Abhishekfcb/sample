%{
	#include<stdio.h>
	int vow=0;
	int con=0;
%}
%%
[aeiouAEIOU] vow++;
[A-Za-z] con++;
%%
int main()
{
yyin=fopen("2.l","r");
yylex();
printf("No. of vowels : %d\n",vow);
printf("No. of consonants : %d\n",con);
}
