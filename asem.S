main:
    push rbp // 스택 프레임 생성
    mov rbp, rsp // 스택 프레임 생성
    mov esi, 0xf // 
    mov rdi, 0x400500
    call 0x400497
    mov eax, 0x0
    pop rbp
    ret

write_n:
    push rbp
    mov rbp, rsp
    mov QWORD PTR [rbp - 0x8], rdi
    mov DWORD PTR [rbp - 0xc], esi
    xor rdx, rdx
    mov edx, DWORD PTR [rbp - 0xc]
    mov rsi, QWORD PTR [rbp - 0x8]
    mov rdi, 0x1
    mov rax, 0x1
    syscall
    pop rbp
    ret
