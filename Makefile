##
# Project Title
#
# @file
# @version 0.1

all:
	flex lexer.lex
	gcc lex.yy.c -lfl

# end
