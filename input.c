//wow this is single line comment
/* and this is multiline
so this must me in at least two lines*/
#include <stdio.h>

int main()
{
			printf("Enter number to print sum upto: ");
			int n;
			int sum = 0;
			scanf("%d",&n);
			while(n>=0)
			{
					sum = sum + n;
					n--;
			}
			printf("Total sum = %d\n",sum);
}

