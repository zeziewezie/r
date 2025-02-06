void	ft_rev_int_tab(int *tab, int size)
{
	int i;
	int a;

	i = 0;
	while (i < size)
	{
		a = tab[(size - 1)];
		tab[(size - 1)] = tab[i];
		tab[i] = a;
		size--;
		i++;
	}
}
