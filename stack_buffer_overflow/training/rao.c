// Compile: gcc -o rao rao.c -fno-stack-protecotr -no-pie

#include <stdio.h>
#include <unistd.h>

void init(void)
{
	setvbuf(stdin, 0, 2, 0);
	setvbuf(stdout, 0, 2, 0);
}

void get_shell(void)
{
	char *cmd = "/bin/sh";
	char *args[] = {cmd, NULL};

	execve(cmd, args, NULL);
}

int main(void)
{
	char buf[0x28];

	init();

	printf("Input: ");
	scanf("%s", buf);

	return 0;
}
