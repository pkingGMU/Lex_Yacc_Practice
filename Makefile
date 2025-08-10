##
# Project Title
#
# @file
# @version 0.1

all:
	bison -t -d -v parser.y
	flex lexer.lex
	gcc -o myparser lex.yy.c parser.tab.c -lfl

# end
