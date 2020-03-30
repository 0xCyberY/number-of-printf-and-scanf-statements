%{
#include<stdio.h>
int p=0,s=0;
%}
%%
"printf" {p++; fprintf(yyout,"writef");}
"scanf" {s++; fprintf(yyout,"readf");}
%%
int main()
{
yyin = fopen("input.c","r");
yyout = fopen("output.c","w");
yylex();
fclose(yyin);
fclose(yyout);
printf("the number of printf statment %d\n",p);
printf("the number of scanf statment %d\n",s);
return 0;
}
int yywrap()
{
	return 1;
}


