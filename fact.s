        .global main

        .text
main:
        # write(1, message, 13)
        mov     $1, %rax                # system call 1 is write
        mov     $1, %rdi                # file handle 1 is stdout
        mov     $message, %rsi          # address of string to output
        mov     $7, %rdx               # number of bytes
        syscall                         # invoke operating system to do the write

        # exit(0)
        mov     $60, %rax               # system call 60 is exit
        xor     %rdi, %rdi              # we want return code 0
        syscall                         # invoke operating system to exit
message:
        .ascii  "Hello!\n"

fact:
        pushq %rbp
        movq %rsp,%rbp
        subq $16,%rsp
        movq %rdi,-8(%rbp)

        cmpq $1,%rdi
        jg fact_else
        movq $1,%rax
        jmp fact_exit

fact_else:
        subq $1,%rdi
        call fact
        movq -8(%rbp),%rdx
        imulq %rdx,%rax

fact_exit:
        movq %rbp,%rsp
        popq %rbp
        ret

