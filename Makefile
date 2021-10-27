CC=gcc
OUT = ./fizzbuzz ./fizzbuzz.o ./fact ./fact.o

fizzbuzz:
	as --gstabs -o fizzbuzz.o fizzbuzz.s
	$(CC) -o fizzbuzz fizzbuzz.o

fact:
	as --gstabs -o fact.o fact.s
	$(CC) -o fact fact.o

clean:
	rm -rf $(OUT)
