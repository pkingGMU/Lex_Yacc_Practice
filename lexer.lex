%{

#include <stdio.h>

%}

%%

[0-9]+          {printf("numbers");}
[a-z]+          {printf("letters");}
[ \t\n]         {;}

%%

int main(void){
    yylex();
 }
