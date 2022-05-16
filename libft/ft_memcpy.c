/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mir <mir@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/07 16:30:28 by mlee2             #+#    #+#             */
/*   Updated: 2022/05/15 06:42:20 by mir              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *dest, void *src, size_t n)
{
	char		*tmp;
	const char	*s;
	size_t		i;

	tmp = (char *)dest;
	s = (const char *)src;
	while (n--)
	{
		tmp[i] = s[i];
		i++;
	}
	return (dest);
}
