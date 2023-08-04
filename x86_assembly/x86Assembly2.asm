; 다음 어셈블리 코드를 실행했을 때 출력되는 결과로 올바른 것은?

[Code]
main:
    push rbp
    mov rbp, rsp
    mov esi, 0xf
    mov rdi, 0x400500
    call 0x400497 <write_n>
    mov eax, 0x0
    pop rbp
    ret
    
write_n:
    push rbp
    mov rbp, rsp
    mov QWORD PTR [rbp-0x8],rdi ; rbp보다 1바이트 위의 주소가 갖는 값을 rdi의 값인 0x400500으로 할당
    mov DWORD PTR [rbp-0xc],esi ; rbp보다 12비트 위의 주소가 갖는 값을 esi의 값인 0xf으로 할당
    xor rdx, rdx ; rdx = 0
    mov edx, DWORD PTR [rbp-0xc]
    mov rsi,QWORD PTR [rbp-0x8]
    mov rdi, 0x1 ; standard output file descripter
    mov rax, 0x1 ; write system call
    syscall ; write(0x1, 0x400500, 0xf)
    pop rbp
    ret
    
==================================    
[Memory]
; x86은 리틀 엔디언 방식을 사용하기 때문에 멀티바이트 형식에서는 변환이 필요하다
0x400500 | 0x3037207964343372 ; 0x7233346479203730
0x400508 | 0x003f367562336420 ; 0x2064336275363f00