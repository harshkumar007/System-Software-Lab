#include<stdio.h>
#include<stdlib.h>
#include<string.h>

char ip_sym[15],stack[15];
int ip_ptr=0,st_ptr=0,len,i;
char temp[2];
char act[15];
void check();

void main()
{
	printf("\n\t\t SHIFT REDUCE PARSER\n");
	printf("\n GRAMMER\n");
	printf("\n E->E|T\n T->T*F|F");
	printf("F->(E)|id\n");
	printf("\nEnter the input symbol:\t");
	scanf("%s",ip_sym);
	printf("\n\t stack implementation table\n");
	printf("\n stack \t\t input symbol\t\tactin");
	printf("\n_______\t\t___________\t\t_________\n");
	printf("\n$\t\t%s$\t\t--",ip_sym);
	strcpy(act,"shift");
	if(ip_sym[ip_ptr]=='(')
	{
		temp[0]=ip_sym[ip_ptr];
		temp[1]='\0';
	}
	else
	{
		temp[0]=ip_sym[ip_ptr];
		temp[1]=ip_sys[ip_ptr+1];
		temp[2]='\0';
	}
	
	strcat(act,temp);
	len=strlen(ip_sym);
	for(i=0;i<=len-1;i++)
	{
		if(ip_sym[ip_ptr]=='i'&&ip_sym[ip_ptr+1]=='d')
		{
			stack[st_ptr]=ip_sym[ip_ptr];
			str_ptr++;
			ip_sym[ip_ptr]='';
			ip_ptr++;
			stack[st_ptr]=ip_sym[ip_ptr];
			stack[st_ptr+1]='\0';
			ip_sym[ip_ptr='';
			ip_ptr++;
		}
		else
		{
			stack[st_ptr]=ip_sym[ip_ptr];
			stack[st_ptr+1]='\0';
			ip_sym[ip_ptr]='';
			ip_ptr++;
		}
		
		printf("\n$%s
			
