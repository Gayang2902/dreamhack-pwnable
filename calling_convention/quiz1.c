// Compile: gcc -o quiz1 quiz1.c -m32

int __attribute__((cdecl)) sum(int a1, int a2, int a3){
	return a1 + a2 + a3;
}
void main(){
	int total = 0;
	total = sum(1, 2, 3);
}
