#include <stdio.h>

extern int ios_system(char* cmd);
#define system ios_system

int main(int argc, char *argv[], char *envp[]) {
	@autoreleasepool {
		printf("Hello world!\n");
    int success = ios_system("killall -9 SpringBoard");
    printf("success %i \n", success);
		return 0;
	}
}
