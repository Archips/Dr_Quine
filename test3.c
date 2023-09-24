#include <stdio.h>

/*
 * comment out
 */

void quine() {

	char *code = "#include <stdio.h>%c/*%c * comment out *%c%c%cvoid quine() {%c%c%cchar *code = "";%c%cprinf(code);%c}%c%cint main(void) {%c%c%c%c%c comment in%c%c%cquine();%c%c%creturn (0);%c}";
	printf(code,10,10,code,10,code,10,code,92,10,10,code,10,10,9,code,10,9,code,10,code,10,10,code,10,10,9,43,43,code,10,10,9,code,10,10,43,code,10,code);
}

int main(void) {

	// comment in

	quine();

	return (0);
}

/* #include <stdio.h>%c%c* * comment out *%c%c%cvoid quine() {%c%c%cchar *code = "";%c%cprinf(code);%c}%c%cint main(void) {%c%c%c%c%c comment in%c%c%cprintf("%s",s);%c%c%creturn (0);%c} */
