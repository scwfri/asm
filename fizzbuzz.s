        .global main

        .text

main:
        pushq %rbp
        movq %rsp, %rbp

        movq $3, %rdi
        movq $5, %rsi
        //call add
        mov $message, %rsi;
        mov $1, %rax
        mov $1, %rdi
        mov $2, %rdx
        syscall

        movq %rbp, %rsp
        popq %rbp
        ret

add:
        addq %rdi, %rsi
        mov $message, %rsi;
        mov $1, %rax
        mov $1, %rdi
        syscall

message:
        .ascii "5\n"
