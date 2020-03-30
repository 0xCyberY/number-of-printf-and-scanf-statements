# number-of-printf-and-scanf-statements
A program to count number of printf and scanf statements and replace them with writef and readf

steps :
create input.c file
then compile:

$ lex convert.l
$ cc lex.yy.c -ll
$ ./a.out
the number of printf statment 2
the number of scanf statment 1
$ cat output.c
#include<stdio.h>
int main()
{

        int a;
        writef("Enter the value of a:\n");
        readf("%d",&a);
        writef("the value of a is %d\n",a);
return 0;
}
