# Makefile

CC=gcc
CFLAGS=-Wall -Wextra -g

all: guess_number_signal guess_number_fifo

guess_number_signal: guess_number_signal.c
	$(CC) $(CFLAGS) -o guess_number_signal guess_number_signal.c -lrt

guess_number_fifo: guess_number_fifo.c
	$(CC) $(CFLAGS) -o guess_number_fifo guess_number_fifo.c -lrt

clean:
	rm -f guess_number_signal guess_number_fifo
