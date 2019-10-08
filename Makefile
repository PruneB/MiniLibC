##
## EPITECH PROJECT, 2019
## Makefile
## File description:
## Makefile
##

CC = ld

SRC	=	src/strlen.asm \
	src/strchr.asm \
	src/memset.asm \
	src/memcpy.asm \
	src/strcmp.asm \
	src/strncmp.asm \
	src/memmove.asm \
	src/strcasecmp.asm \
	src/rindex.asm \
	src/strstr.asm \
	src/strpbrk.asm \
	src/strcspn.asm

OBJ	=	$(SRC:.asm=.o)

NAME	=	libasm.so

%.o: %.asm
	nasm -o $@ $< -f elf64

all:		$(NAME)

$(NAME):	$(OBJ)
		$(CC) -shared -o $(NAME) $(OBJ) 

clean:
	rm -f $(OBJ)

fclean:		clean
	rm -f $(NAME)

re:		fclean all