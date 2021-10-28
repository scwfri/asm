CC=gcc
OUT = ./fizzbuzz ./fizzbuzz.o ./fact ./fact.o

.PHONY:fizzbuzz
fizzbuzz:
	as --gstabs -o fizzbuzz.o fizzbuzz.s
	$(CC) -o fizzbuzz fizzbuzz.o

.PHONY:fact
fact:
	as --gstabs -o fact.o fact.s
	$(CC) -o fact fact.o

.PHONY:clean
clean:
	rm -rf $(OUT)
