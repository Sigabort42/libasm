#include <stdio.h>
#include <stdlib.h>

extern void ft_bzero(void*, size_t);
//extern int ft_isalpha(int);
extern int ft_isalnum(int);
//extern int ft_toupper(int);
extern int ft_tolower(int);
//extern int ft_tolower(int);

#define WORD "Salut"

int main()
{
  //  char *str = malloc(strlen(WORD));
  
  //strcpy(str, WORD);
  //printf("lol=>%s\n", str);
  //ft_bzero(str, 3);//strlen(str));
  printf("lil =>%d\n", ft_isalnum(120));
  //ft_puts("Salut toi comment tu va?"));
  //printf("lol=>%s|%s|\n", str, str + 3);
  return (0);
}
