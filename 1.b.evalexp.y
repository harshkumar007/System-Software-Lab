
%{
	#include <stdio.h>
	extern int yylex();
%}

%token id
%left '+' '-'
%left '*' '/'

%%
exp:E{ printf("Result=%d",$1);}
E:E'+'E {$$=$1+$3;}
 |E'-'E {$$=$1-$3;}
 |E'*'E {$$=$1*$3;}
 |E'/'E {if($3==0){
	 printf("invalid");
	 return 0;
  }
  else $$=$1/$3;}

 |'('E')' {$$=$2;}
 |id {$$=$1;}
%%
void main()
{
	printf("Enter expression:");
	yyparse();
}

int yyerror()
{
printf("invalid");
return 0;
}
