#include <stdio.h>

/*
  Comment out
*/

void quine() {

	char *code = "#include <stdio.h>%c%c/*%c  Comment out%c*/%c%cvoid quine() {%c%c	char *code = %c%s%c;%c	printf(code, 10, 10, 10, 10, 10, 10, 10, 10, 34, code, 34, 10, 10, 10, 10, 10, 10,10,10,10,10,10, 10, 10, 10);%c}%c%cint main(void) {%c%c	/*%c	  Comment in%c	*/%c%c	quine();%c%c	return (0);%c}";
	printf(code, 10, 10, 10, 10, 10, 10, 10, 10, 34, code, 34, 10, 10, 10, 10, 10, 10,10,10,10,10,10, 10, 10, 10);
}

int main(void) {

	/*
	  Comment in
	*/

	quine();

	return (0);
}