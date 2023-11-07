/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_hexadecimal.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tanota <tanota@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/21 16:22:20 by tanota            #+#    #+#             */
/*   Updated: 2023/03/21 16:22:22 by tanota           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_hexadecimal(unsigned int x, int *len, char xx)
{
	char	str[25];
	char	*base;
	int		i;

	if (xx == 'X')
		base = "0123456789ABCDEF";
	else
		base = "0123456789abcdef";
	i = 0;
	if (x == 0)
	{
		ft_putchar_len('0', len);
		return ;
	}
	while (x != 0)
	{
		str[i] = base [x % 16];
		x = x / 16;
		i++;
	}
	while (i--)
		ft_putchar_len(str[i], len);
}
