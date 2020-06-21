NAME		=	libfts.a

NAME_TEST	=	a.out

AS		=	nasm

CC		=	clang

ASFLAGS		=	-f macho64

CFLAGS		=	-Wall -Wextra -Werror

FLAG_LIB	=	-L ./ -lfts

SRCS		=	ft_bzero.s \
			ft_isalpha.s \
			ft_isalnum.s \
			ft_isascii.s \
			ft_isprint.s \
			ft_isdigit.s \
			ft_toupper.s \
			ft_tolower.s \
			ft_puts.s \
			ft_strcat.s \

HEADERS		=	libfts.h

OBJ		=	$(SRCS:.s=.o)


all: $(NAME)

$(NAME): $(OBJ)
	@/usr/bin/ar rc $(NAME) $(OBJ)
	@echo "\033[H\033[2J\033[32mLibfts [\033[32;5mOk\033[0m\033[32m]"

run: $(OBJ) main.c
	@$(CC) $(CFLAGS) $(FLAG_LIB) main.c -o $(NAME_TEST)
	@echo "\033[H\033[2J\033[32mBinary a.out[\033[32;5mOk\033[0m\033[32m]"

clean:
	@/bin/rm $(OBJ)
	@echo "\033[32mLibfts.o [\033[32;5mCleaned\033[0m\033[32m]"

fclean: clean
	@rm -rf $(NAME) $(NAME_TEST)
	@echo "\033[32mLibfts|a.out [\033[32;5mCleaned\033[0m\033[32m]"

re: fclean all
