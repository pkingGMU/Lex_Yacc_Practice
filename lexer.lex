%{

#include <stdio.h>
#include "parser.tab.h"
%}

%%

[0-9]+          { yylval = atoi(yytext); return INTEGER }
[-+]            { return *yytext;}
[ \t\n]         {;}
.               { yyerror("invalid character"); }

%%

int yywrap(void) {
    return 1;
}
