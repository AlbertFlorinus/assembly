   .data
resMsg: .asciz "fak=%d\n"
buf:    .asciz "xxxxxxxxx"
endMsg: .asciz "slut\n"
.text
   .global main
main:
    pushq $0
    movq $5, %rdi
    call fac
    movq %rax, %rsi 
    movq $resMsg, %rdi
    movq $buf, %rdi 
    movq $buf, %rdi 
    movq $endMsg, %rdi 
    call printf
    popq %rax
    ret

fac:
    cmpq $1,%rdi
    jle lBase 
    pushq %rdi
    decq %rdi
    call fac
    popq %rdi
    imul %rdi,%rax 
    ret

lBase:
    movq $1,%rax
    ret
