%{
extern int yylex();
extern FILE *yyin;
int id=0,key=0,op=0;
%}

%token KEY ID OP

%%

input: ID input {id++;}
     | KEY input {key++;}
     | OP input {op++;}
     | ID {id++;}
     | KEY {key++;}
     | OP {op++;}
%%


void main()
{
int n;
printf("Enter choice 1:input from file 2:input from command prompt\n");
scanf("%d",&n);
if(n==1){
	yyin = fopen("text.txt","r");
	yyparse();
	fclose(yyln);

}
if(n==2){
	yyparse();
}

printf("keyword=%d and operator=%d and id=%d",key,op,ip);

int yyerror()
{
printf("invalid");
return 0;
}


