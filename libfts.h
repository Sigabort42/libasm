#ifndef LIBFTS_H
# define LIBFTS_H

size_t	ft_strlen(const char *);
void	ft_bzero(void*, size_t);
void	ft_cat(int fd);
void	*ft_memset(void *, int, size_t);
void	*ft_memcpy(void *, const void *, size_t);
char	*ft_strcat(char *, const char *);
char	*ft_strdup(const char *);
int	ft_isalpha(int);
int	ft_isalnum(int);
int	ft_isascii(int);
int	ft_isdigit(int);
int	ft_isprint(int);
int	ft_toupper(int);
int	ft_tolower(int);
int	ft_tolower(int);
int	ft_puts(const char *);

#endif
