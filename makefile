CC = gcc
FLAGS = -Wall -g
OBJECTS = basicMath.o power.o myMath.h

all:mains maind mymathd mymaths

mains: main.o mymaths
	$(CC) $(FLAGS) -o mains main.o libmyMath.a

maind:main.o mymathd
	$(CC) $(FLAGS) -o maind main.o ./libmyMath.so

mymaths:$(OBJECTS) 
	ar -rcs libmyMath.a $(OBJECTS)

mymathd:$(OBJECTS)
	$(CC) -shared -o libmyMath.so -fPIC basicMath.c power.c

main.o:main.c myMath.h
	$(CC) $(FLAGS) -c main.c

basicMath.o:basicMath.c
	$(CC) $(FLAGS)  -c basicMath.c

power.o: power.c
	$(CC) $(FLAGS) -c power.c	




.PHONY:clean all
clean:
	rm -f *.o mains maind libmyMath.a libmyMath.so