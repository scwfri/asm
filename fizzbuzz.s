        .global main

        .text

main:
        mov $fizz, %rsi
        mov $5, %rdx
        call printit
        mov $buzz, %rsi
        mov $5, %rdx
        call printit
        ret

printit:
        mov $1, %rax
        mov $1, %rdi
        syscall
        ret

fizz:
        .ascii "Fizz\n"
buzz:
        .ascii "Buzz\n"
