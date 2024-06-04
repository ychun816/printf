#include "ft_printf.h"
#include <stdio.h>
int main()
{
	int d;
	printf("yours  : %d\n", ft_printf("%d %i %c %u %p %x %X %%\n\n", 42, 42, 'd', 42, &d, 0x16, 0x16));
	printf("real   : %d\n", printf("%d %i %c %u %p %x %X %%\n\n", 42, 42, 'd', 42, &d, 0x16, 0x16));
}