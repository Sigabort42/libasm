#include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <unistd.h>
# include <fcntl.h>
# include "libfts.h"

#define WORD "Salut"

int main()
{
  char *str = malloc(strlen(WORD));
  char *str2 = malloc(strlen(WORD) + strlen(WORD) + 1);
  
  strcpy(str, WORD);
  strcpy(str2, WORD);
  str2 = ft_strcat(str2, "OUlou");
  printf("ft_strcat(str2, 'Oulou')=>%s\n", str2);
  printf("ft_bzero(str, strlen(str)) before=>%s\n", str);
  ft_bzero(str, strlen(str));
  printf("ft_bzero(str, strlen(str)) after=>%s|%s|\n", str, str + 3);
  printf("ft_strlen('Salut')=>%zu\n", ft_strlen("Salut"));
  printf("ft_isascii(-1) =>%d\n", ft_isascii(-1));
  printf("ft_isdigit(-1) =>%d\n", ft_isdigit(-1));
  printf("ft_isprint(-1) =>%d\n", ft_isprint(-1));
  printf("ft_isalnum(12) =>%d\n", ft_isalnum(12));
  printf("ft_isalpha(42) =>%d\n", ft_isalpha(42));
  ft_puts("Salut toi comment tu va?");
  str = ft_memset(str, 48, 4);
  printf("ft_memset(str, 48, 3)=>%s\n", str);
  str = ft_memcpy(str, WORD, 3);
  printf("ft_memcpy(str, 'salut', 3)=>%s\n", str);
  printf("ft_strdup('Ouloulou')=>%s\n", ft_strdup("Ouloulou"));
  /***********************[ft_cat]*********************************/
  int	fd = open("./Makefile", O_RDONLY);
  if (fd > -1)
    ft_cat(fd);
  ft_cat(0);
  return (0);
}
