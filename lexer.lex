%{

#include <stdio.h>
#include "parser.tab.h"
%}

%%

[0-9]+          {printf("numbers");}
[a-z]+          {printf("letters");}
[ \t\n]         {;}

%%

