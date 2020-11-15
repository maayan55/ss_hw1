all:mymaths mymathd mains maind

maind:main.o 
	gcc -Wall -g -o maind main.o ./libmyMath.so

mains:main.o  libmyMath.a 
	gcc -Wall -g -o  mains main.o libmyMath.a 

mymaths:libmyMath.a
mymathd:libmyMath.so

libmyMath.a:basicMath.o power.o myMath.h
	ar -rcs libmyMath.a basicMath.o power.o myMath.h 

libmyMath.so:basicMath.o power.o myMath.h
	gcc -shared -o libmyMath.so basicMath.o power.o myMath.h

basicMath.o:basicMath.c
	gcc -Wall -g -c basicMath.c

power.o:power.c
	gcc -Wall -g -c power.c

main.o:main.c myMath.h
	gcc -Wall -g -c main.c

clean:
	rm -f *.o *.a *.so maind mains