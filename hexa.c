#include <stdio.h>

unsigned int array[0x30];

int main(void)
{
    size_t count;

    scanf("%lu", &count);
    for (size_t i = 0; i < count; i++) { scanf("%x", &array[i]); }
    for (size_t i = 0; i < count; i++) { printf("%c", array[i]); }

    return 0;
}

// 61 6c 66 2f 70 6d 74 2f 67