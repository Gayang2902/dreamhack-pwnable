#include <stdio.h>

int array[32] = {0x67, 0x55, 0x5c, 0x53, 0x5f, 0x5d, 0x55, 0x10,
                 0x44, 0x5f, 0x10, 0x51, 0x43, 0x43, 0x55, 0x5d,
                 0x52, 0x5c, 0x49, 0x10, 0x47, 0x5f, 0x42, 0x5c,
                 0x54, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

int main(void)
{
    unsigned int rcx = 0;
    unsigned int rdx = 0;
    unsigned int rsi = 0x400000;
    unsigned int dl;

    while (rcx <= 0x19) {
        dl = array[rsi+rcx-0x400000];
        dl^=0x30;
        array[rsi+rcx-0x400000] = dl;
        rcx++;
    }
    for (int i = 0; i < 32; i++) {
        printf("%c", array[i]);
    }
    puts("");

    return 0;
}