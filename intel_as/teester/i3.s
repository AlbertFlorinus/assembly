.data
message: .asciz "Hello"

.text
.global main
main:
  pushq $0
  movq $message, %rdi
  
  call printf
  call exit
