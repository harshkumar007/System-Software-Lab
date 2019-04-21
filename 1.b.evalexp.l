%{
	#include "y.tab.h"
	extern int yylval;
%}

%%
	[0-9]+ {yylval = atoi(yytext);
			return id; /*the same token 'id' should be in yacc program.it is usually interger value*/
			}
	. {return yytext[0]} /*return zero or any single character */
	\n {return 0}
%%

