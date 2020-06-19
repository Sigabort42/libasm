NAME		=	libfts.a

CC		=	nasm

FLAGS		=	-f macho64

SRCS		=	ft_bzero.s \
			ft_isalpha.s \
			ft_isalnum.s \
			ft_isascii.s \
			ft_isprint.s \
			ft_isdigit.s \
			ft_toupper.s \
			ft_tolower.s \
			ft_puts \

OBJS		=	$(SRCS:.c=.o)


all: $(NAME)

$(NAME): $(OBJS)
	@/usr/bin/ar rc $(NAME) $(OBJS)
	@echo "\033[H\033[2J\033[32mLibfts [\033[32;5mOk\033[0m\033[32m]"

clean:
	@/bin/rm -i $(OBJS)
	@echo "\033[32mLibfts.o [\033[32;5mCleaned\033[0m\033[32m]"

fclean: clean
	@rm -rf -i $(NAME)
	@echo "\033[32mLibfts [\033[32;5mCleaned\033[0m\033[32m]"

re: fclean all
