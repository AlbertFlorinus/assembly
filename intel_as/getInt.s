.global	readInt

readInt:
    movq $0, %rax
lNumber:
    cmpb $'0', (%edi)
    jl lEnd
    cmpb $'9', (%edi)
    jg lEnd
    movzbq %edi
    subq $'0'
    imulq $10, %rax
    addq $r10, %rax
    incq %edi
    jmp lNumber

lEnd:
    ret