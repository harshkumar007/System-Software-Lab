%{
	#include <stdio.h>
	extern int yylex();
%}

%token id
%left '+''-'
%left '*''/'

%%
	expr: E {printf("Result=%d",$1);}
	| E: E '+' E {$$=$1+$3;}
	| E: E '-' E {$$=$1-$3;}
	| E: E '*' E {$$=$1*$3;}
	| E: E '/' E {$$=$1/$3;}
	| E: '(' E ')' {$$=$1;}
	| E: id  {$$=$1;}
	;
%%

int main()
{
	printf("Enter an Expression to evaluate:\n");
	yyparse();
	printf("Valid Expression");
	
	void yyerror()
	{
		printf("Invalid Epression");
	}
}
