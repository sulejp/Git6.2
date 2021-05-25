.PHONY: clean
.SUFFIXES: .c .o .a

VPATH = src include

%.o: %.c
	gcc -c $<	
	
hello.o: hello.c print.h
print.o: print.c
print.a: print.o
	ar rs $@ $<
	
hello: hello.o print.a
	gcc -o $@ $^ -L./Git6.2 -I./Git6.2/include

	


