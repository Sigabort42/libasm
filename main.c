#include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include "libfts.h"

#define WORD "Salut"

int main()
{
  char *str = malloc(strlen(WORD));
  char *str2 = malloc(strlen(WORD) + strlen(WORD) + 1);
  
  strcpy(str, WORD);
  strcpy(str2, WORD);
  str2 = ft_strcat(str2, "OUlou");
  printf("ft_strcat=>%s\n", str2);
  //printf("ft_bzero=>%s\n", str);
  ft_bzero(0, strlen(str));
  //printf("ft_bzero=>%s|%s|\n", str, str + 3);
  //printf("isascii =>%d\n", ft_isascii(-1));
  //ft_puts("Salut toi comment tu va?");
  return (0);
}
