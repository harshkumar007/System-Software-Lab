%{
#include <stdio.h>
#include "y.tab.h"
%}

%%

[+\-%/<>=]+ { printf("%s is a operator",yytext); return op;}
[a-bA-Z_][a-zA-Z0-9]+ {return id;}
"int"|"char"|"printf"|"scanf"|"while"|"do"|"switch"|"void"|"main" { printf("%s is a keyword \n",yytext); return KEY;};
[\t] ;

%%

