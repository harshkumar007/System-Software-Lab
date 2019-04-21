/* definition/declaration_section */
%{

#include <stdio.h>
int opr=0,opd=0,bracket=0;

%}

/* rules/transition_section */

%%
[+] {opr++;printf("Operator: %s\n",yytext);}
[*] {opr++;printf("Operator: %s\n",yytext);}
[0-9]+ {opd++;printf("Operand: %s\n",yytext);}
[(] {bracket++;}
[)] {bracket--;}
%%

/* subroutine_section */
void main(int argc,char *argv[])
{
	printf("Enter the numeric expression with operator + and * only:\n");
	yylex();
	if(opr>=opd || bracket != 0 ||opd==1)
	{
		printf("Invalid\n");
	}
	else
	{
		printf("valid\n");
	}

	printf("Count of operator is %d , operand is %d and bracket is %d\n",opr,opd,bracket); 
}

