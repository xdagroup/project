CC=gcc
LX=lex
YC=yacc

all: main

main:
	${LX} main.l && ${YC} main.y && ${CC} y.tab.c -ll

run:
	./a.out

clean:
	rm -f a.out lex.yy.c y.tab.c
