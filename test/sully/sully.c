#include <stdio.h>

int main(void) {

    int i = 5;
	i --;

	char filename[11];
	sprintf(filename, "Sully_%d.c", i);
	filename[10] = 0;

	FILE *file = fopen(filename, "w+");
	if (!file || i <= 0)
		return (1);

	char *code = "#include <stdio.h>%c%cint main(void) {%c%c	int i = %d;%c	i --;%c%c	char filename[11];%c	sprintf(filename, %cSully_%%d.c%c, i);%c	filename[10] = 0;%c%c	FILE *file = fopen(filename, %cw+%c);%c	if (!file || i <= 0)%c		return (1);%c%c	char *code = %c%s%c;%c	fprintf(file, code, 10, 10, 10, 10, i, 10, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10, 10, 34, code, 34, 10, 10, 10, 10);%c%c	return (0);%c}";
	fprintf(file, code, 10, 10, 10, 10, i, 10, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10, 10, 34, code, 34, 10, 10, 10, 10);

	return (0);
}
