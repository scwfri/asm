CC=gcc
OUT = ./fizzbuzz ./fizzbuzz.o

make:
	as --gstabs -o fizzbuzz.o fizzbuzz.s
	$(CC) -o fizzbuzz fizzbuzz.o

clean:
	rm -rf $(OUT)
