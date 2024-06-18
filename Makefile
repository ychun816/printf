# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yilin <yilin@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/28 18:42:21 by yilin             #+#    #+#              #
#    Updated: 2024/06/05 15:37:36 by yilin            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLOR_RESET = \033[0m
COLOR_PINKB = \033[1;95m
COLOR_REDB = \033[1;91m

NAME = libftprintf.a
SRCS = ft_printf.c ft_put_char.c ft_put_int.c ft_put_str.c\
ft_put_hex.c ft_put_ptr.c ft_put_unsign.c

OBJS = $(SRCS:.c=.o)
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -rf

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)
	@echo "$(COLOR_PINKB)✨COMPILATION DONE✨$(COLOR_RESET)"

%.o: %.c ft_printf.h
	cc $(CFLAGS) -o $@ -c $<
	
all: $(NAME)
	@echo "$(COLOR_PINKB)ALL DONE$(COLOR_RESET)"

clean:
	$(RM) $(OBJS)
	@echo "$(COLOR_PINKB)CLEAN DONE$(COLOR_RESET)"

fclean: clean
	$(RM) $(NAME)
	@echo "$(COLOR_REDB)FCLEAN DONE💦💦$(COLOR_RESET)"
	
re: clean all

.PHONY: all clean fclean all