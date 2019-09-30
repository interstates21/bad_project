/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lst_size.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dbolilyi <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/06 18:49:44 by dbolilyi          #+#    #+#             */
/*   Updated: 2018/05/08 12:43:26 by dbolilyi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_lst_size(t_list *lst)
{
	size_t	i;

	if (lst == 0)
		return (0);
	i = 1;
	while (lst->next != 0)
	{
		lst = lst->next;
		i++;
	}
	return (i);
}