CFLAGS=-O2 -g -Wall
CC=gcc
PROGNAME=dtbToolLineage

all: dtbtool

%.o: %.c
	$(CC) $(CFLAGS) -c $<

dtbtool: dtbtool.o
	$(CC) -g -o $(PROGNAME) dtbtool.o

clean:
	rm -f *.o $(PROGNAME)
