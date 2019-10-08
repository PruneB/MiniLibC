/*
** EPITECH PROJECT, 2019
** ASM_minilibc_2018
** File description:
** main
*/

#include <stdio.h>
#include <string.h>

int main()
{
	char test[50] = "Boajour";
	char rec[50];
	char s1[] = "string";
	char s2[] = "STRINM";
	char dest[] = "oldstring";
	const char src[] = "newstring";
	int s = strlen("Bonjour je m'appel prune");

	printf("%s\n", strchr("bonjnour", 'n'));
	printf("%d\n", s);
	char str[50] = "Mais oui bien sur que je t'aime";
	printf("Before memset(): %s\n", str);
	memset(str + 13, '.', 8 * sizeof(char));
	printf("After memset():  %s\n", str);
	printf("Before memcpy(): %s\n", rec);
	memcpy(rec, test, 5);
	printf("After memcpy(): %s\n", rec);
	printf("strcmp = %d\n", strcmp(str, test));
	printf("Before memmove dest = %s, src = %s\n", dest, src);
	memmove(dest, src, 9);
	printf("After memmove dest = %s, src = %s\n", dest, src);
	printf("strncmp = %d\n", strncmp(str, test, 6));
	printf("rindex = %s\n", rindex("bonjnour", 'n'));
	printf("strstr good = %s\n", strstr("bonjnour", "bonjnour"));
	printf("strstr bad = %d\n", strstr("bonjnour", "trop drole"));
	printf("strpbrk good = %s\n", strpbr("abcde2fghi3jk4l", "32"));
	printf("strpbrk bad = %s\n", strpbr("abcde2fghi3jk4l", "zzzz"));
	int len = strcsp("ABCDEF4960910", "E013");

	printf("First matched character is at %d\n", len + 1);

	return 0;
}