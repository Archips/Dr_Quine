#include <stdio.h>
#include <fcntl.h>

#define CODE "#include <stdio.h>%c#include <fcntl.h>%c%cint main(void) {%c%c	FILE *file = fopen(%cGrace_kid.c%c, %cw+%c);%c	if (!file)%c		return (0);%c	char *code = %c%s%c;%c	fprintf(file,code,10,10,10,10,10,34,34,34,34,10,10,10,34,code,34,10,10,10,10,10,10,10);%c%c	// comment in%c%c	return (0);%c}%c"

int main(void) {

	FILE *file = fopen("Grace_kid.c", "w+");
	if (!file)
		return (0);
	// char *code = "#include <stdio.h>%c#include <fcntl.h>%c%cint main(void) {%c%c	FILE *file = fopen(%cGrace_kid.c%c, %cw+%c);%c	if (!file)%c		return (0);%c	char *code = %c%s%c;%c	fprintf(file,code,10,10,10,10,10,34,34,34,34,10,10,10,34,code,34,10,10,10,10,10,10,10);%c%c	// comment in%c%c	return (0);%c}%c";
	fprintf(file,CODE,10,10,10,10,10,34,34,34,34,10,10,10,34,CODE,34,10,10,10,10,10,10,10);

	// comment in

	return (0);
}
