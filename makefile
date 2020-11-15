CC = gcc
FLAG = -Wall -g
LIBS=power.o basicMath.o

all: mains maind libmyMath.so libmyMath.a 

mains: main.o libmyMath.a
	$(CC) $(FLAG) -o mains main.o libmyMath.a

maind: main.o
	$(CC) $(FLAG) -o maind main.o ./libmyMath.so
	
libmyMath.a: $(LIBS)
	ar -rcs libmyMath.a $(LIBS)

libmyMath.so: $(LIBS)
	$(CC) -shared -o libmyMath.so $(LIBS)

power.o:  power.c myMath.h
	$(CC) $(FLAG) -c power.c
	
basicMath.o: basicMath.c myMath.h
		$(CC) $(FLAG) -c basicMath.c

main.o: main.c myMath.h
	$(CC) $(FLAG) -c main.c
	
.PHONY: clean all

 clean:
	rm -f *.o *.a *.so mains maind