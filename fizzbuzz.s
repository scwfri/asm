        .global main

        .text

# add string to %rsi
# add string length to %rdx
# call printit
main:
        mov $hello, %rsi
        mov $13, %rdx
        call printit
        mov $fizz, %rsi
        mov $5, %rdx
        call printit
        mov $buzz, %rsi
        mov $5, %rdx
        call printit
        ret

printit:
        mov $1, %rax # system call 1 => write
        mov $1, %rdi # write to STDOUT (1)
        syscall
        ret

fizz:
        .ascii "Fizz\n"

buzz:
        .ascii "Buzz\n"

hello:
        .ascii "Hello World!\n"
