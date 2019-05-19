#include<stdio.h>
int queue[100], front = 0, rear = -1, m, n, i, j, pH=0, pM=0, lru[100], k=99, l=99, a[100];
int queueIsEmpty()
{
	for(int i=0; i<m; i++)
		if(queue[i] == -9)
			return 1;
	return 0;
}
void display()
{
	for(int i=0; i<m; i++)
	{
		if(queue[i] == -9)
			printf("-\n");
		else
			printf("%d\n", queue[i]);
	}
}
int pageHit(int page)
{
	for(int i=0; i<m; i++)
		if(queue[i] == page)
			return 1;
	return 0;
}
void solve(int ch)
{
	for(i=0; i<n; i++)
	{
		if(pageHit(a[i]))
		{
			printf("\nPno.%d : Page Hit\n", a[i]);
			pH++;
			if(ch == 2)
			{
				lru[k--] = a[i];
				l--;
			}
			display();
			continue;
		}
		else
		{
			if(queueIsEmpty())
			{
				queue[++rear] = a[i];
				lru[k--] = a[i];
			}
			else
			{
				if(ch == 1)
				{
					rear = (rear+1)%m;
					queue[rear] = a[i];
				}
				else
				{
					for(j=0; j<m; j++)
						if(queue[j] == lru[l])
						{
							queue[j] = a[i];
							lru[k--] = a[i];
							l--;
							break;
						}
				}
			}
			printf("\nPno.%d : Page Miss\n", a[i]);
			pM++;
			display();
		}
	}
}
int main()
{
	printf("Enter frame size: ");
	scanf("%d", &m);
	printf("How many page numbers?: ");
	scanf("%d", &n);
	for(i=0; i<m; i++)
		queue[i] = -9;
	printf("Enter page those numbers: ");
	for(i=0; i<n; i++)
		scanf("%d", &a[i]);
	int ch;
	printf("\nSelect\n1. FIFO\n2. LRU\n");
	scanf("%d", &ch);
	solve(ch);
}
