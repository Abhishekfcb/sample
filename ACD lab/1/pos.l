%{
int pos=0;
int neg=0;
int posf=0;
int negf=0;
%}

DIGIT [0-9]
%%
\+?{DIGIT}+ pos++;
-{DIGIT}+ neg++;
\+?{DIGIT}*\.{DIGIT}+ posf++;
-{DIGIT}*\.{DIGIT}+ negf++;
. ;
%%

void main()
{
yylex();
printf("\nNo. of positive numbers: %d",pos);
printf("\nNo. of Negative numbers: %d",neg);
printf("\nNo. of Positive fractions: %d",posf);
printf("\nNo. of Negative fractions: %d\n",negf);
}
