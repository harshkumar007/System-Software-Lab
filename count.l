%{

#include <stdio.h>
int opr=0,opd=0,bracket=0;

%}

%%
[+] {opr++;}
[*] {opr++;}
[0-9]+ {opd++;}
[(] {bracket++;}
[)] {bracket--;}
%%

void main(int argc,char *argv[])
{
	printf("Enter the expression:\n");
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

