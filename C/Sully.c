#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(void) {

	int i = 5;
	if (i <= 0)
		return (0);

	char filename[11];
	char compile[47];
	char exec[11];

	if (access("Sully_5.c", R_OK) == 0)
		i --;

	sprintf(filename, "Sully_%d.c", i);
	filename[10] = 0;
	sprintf(compile, "gcc -Wall -Wextra -Werror Sully_%d.c -o Sully_%d", i, i);
	compile[46] = 0;
	sprintf(exec, "./Sully_%d", i);
	exec[10] = 0;

	FILE *file = fopen(filename, "w+");
	if (!file)
		return (1);

	char *code = "#include <stdio.h>%c#include <stdlib.h>%c#include <unistd.h>%c%cint main(void) {%c%c	int i = %d;%c	if (i <= 0)%c		return (0);%c%c	char filename[11];%c	char compile[47];%c	char exec[11];%c%c	if (access(%cSully_5.c%c, R_OK) == 0)%c		i --;%c%c	sprintf(filename, %cSully_%%d.c%c, i);%c	filename[10] = 0;%c	sprintf(compile, %cgcc -Wall -Wextra -Werror Sully_%%d.c -o Sully_%%d%c, i, i);%c	compile[46] = 0;%c	sprintf(exec, %c./Sully_%%d%c, i);%c	exec[10] = 0;%c%c	FILE *file = fopen(filename, %cw+%c);%c	if (!file)%c		return (1);%c%c	char *code = %c%s%c;%c	fprintf(file, code, 10, 10, 10, 10, 10, 10, i, 10, 10, 10, 10, 10, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 34, 34, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10, 10, 34, code, 34, 10, 10, 10, 10, 10, 10, 10, 10);%c	fclose(file);%c%c	system(compile);%c	system(exec);%c%c	return (0);%c}";
	fprintf(file, code, 10, 10, 10, 10, 10, 10, i, 10, 10, 10, 10, 10, 10, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 34, 34, 10, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10, 10, 10, 34, code, 34, 10, 10, 10, 10, 10, 10, 10, 10);
	fclose(file);

	system(compile);
	system(exec);

	return (0);
}
