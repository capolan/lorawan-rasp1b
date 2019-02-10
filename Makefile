# single_chan_pkt_fwd
# Single Channel LoRaWAN Gateway

CC=g++
CFLAGS=-c -Wall
LIBS=-lwiringPi

all: lorawan-rasp1b

lorawan-rasp1b: base64.o main.o
	$(CC) main.o base64.o $(LIBS) -o lorawan-rasp1b

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

base64.o: base64.c
	$(CC) $(CFLAGS) base64.c

clean:
	rm *.o lorawan-rasp1b
