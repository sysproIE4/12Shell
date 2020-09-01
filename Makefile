all: myshell

myshell: myshell.c
	cc -D_GNU_SOURCE -Wall -std=c99 -o myshell myshell.c

