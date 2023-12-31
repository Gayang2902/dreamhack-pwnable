; end로 점프하면 프로그램이 종료된다고 가정하자. 프로그램이 종료됐을 때, 
; 0x400000 부터 0x400019까지의 데이터를 대응되는 아스키 문자로 변환하면 어느 문자열이 나오는가?

[Register]
rcx = 0
rdx = 0
rsi = 0x400000

[Memory]
0x400000 | 0x67 0x55 0x5c 0x53 0x5f 0x5d 0x55 0x10
0x400008 | 0x44 0x5f 0x10 0x51 0x43 0x43 0x55 0x5d
0x400010 | 0x52 0x5c 0x49 0x10 0x47 0x5f 0x42 0x5c
0x400018 | 0x54 0x11 0x00 0x00 0x00 0x00 0x00 0x00

[Code]
1: mov dl, BYTE PTR[rsi+rcx]
2: xor dl, 0x30
3: mov BYTE PTR[rsi+rcx], dl
4: inc rcx
5: cmp rcx, 0x19
6: jg end
7: jmp 1