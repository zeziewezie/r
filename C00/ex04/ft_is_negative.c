#include <unistd.h>
#include <stdio.h>

void	ft_is_negative(int n)
{
	char ans;

	if (n < 0)
	{
		ans = 'N';
		write(1, &ans, 1);
	}
	else
	{
		ans = 'P';
		write(1, &ans, 1);
	}
}
