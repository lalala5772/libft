# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mlee2 <mlee2@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/18 18:55:18 by mlee2             #+#    #+#              #
#    Updated: 2022/05/18 19:46:54 by mlee2            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC		= gcc
CFLAGS	= -Wall -Werror -Wextra
FILES = ft_isalpha.c \
		ft_isdigit.c \
		ft_isalnum.c \
		ft_isascii.c \
		ft_isprint.c \
		ft_strlen.c \
		ft_memset.c \
		ft_bzero.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_strlcpy.c \
		ft_strlcat.c \
		ft_toupper.c \
		ft_tolower.c \
		ft_strchr.c \
		ft_strrchr.c \
		ft_strncmp.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_strnstr.c \
		ft_atoi.c \
		ft_calloc.c \
		ft_strdup.c \
		ft_substr.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_split.c \
		ft_itoa.c \
		ft_strmapi.c \
		ft_striteri.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c

BONUS = ft_lstnew.c \
		ft_lstadd_front.c \
		ft_lstsize.c \
		ft_lstlast.c \
		ft_lstadd_back.c \
		ft_lstdelone.c \
		ft_lstclear.c \
		ft_lstiter.c \
		ft_lstmap.c

OBJ		= ${FILES:.c=.o}
BONUS_OBJ = ${BONUS:.c=.o}

RM		= rm -rf

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME)	: ${OBJ}
			ar rc ${NAME} ${OBJ}

all : ${NAME}
bonus: ${OBJ} ${BONUS_OBJ}
			ar rc ${NAME} ${OBJ} ${BONUS_OBJ}

clean :
			${RM} *.o 

fclean : clean
			${RM} ${NAME}

re : fclean all

.PHONY : all clean fclean re