%{
#include <stdio.h>
int comment=0;
%}

%%

"/*"([^*]|\*[^/])*"*/" { comment++;}
"//".* {comment++;}

%%

int main()
{
	char infile[256],outfile[256];
	printf("Enter infile name:");
	scanf("%s",infile);
	printf("Enter Outfile name:");
	scanf("%s",outfile);
	yyin = fopen(infile,"r");
	yyout = fopen(outfile,"w");
	yylex();
	printf("No. of comment lines is %d\n",comment);
}
