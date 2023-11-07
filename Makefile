# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tanota <tanota@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/21 16:02:08 by tanota            #+#    #+#              #
#    Updated: 2023/11/07 12:22:07 by tanota           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC			=				ft_hexadecimal.c	\
							ft_nbr.c			\
							ft_pointer.c		\
							ft_printf.c			\
							ft_putchar_len.c	\
							ft_str.c			\
							ft_unsigned_int.c

OBJS			=			$(SRC:.c=.o)

NAME			=			libftprintf.a

CC				=			cc
FLAGS			=			-Wall -Wextra -Werror

AR				=			ar rcs
RM				=			rm -f

$(NAME)			:			$(OBJS)
							$(AR) $(NAME) $(OBJS)

all				:			$(NAME)

clean			:
							$(RM) $(OBJS)

fclean			:			clean
							$(RM) $(NAME)

re				:			fclean all

.PHONY			:			all clean fclean re 