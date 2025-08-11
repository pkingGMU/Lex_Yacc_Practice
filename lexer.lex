%{

#include <stdio.h>
#include "parser.tab.h"
%}

%%

[0-9]+          { yylval = atoi(yytext); return INTEGER; }
[-+\n]            { return *yytext;}
[ \t\n]         {;}
.               { printf("invalid character"); }

%%

int yywrap(void) {
    return 1;
}
