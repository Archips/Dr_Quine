#include <stdio.h>

#define GRACE "Grace_kid.c"
#define CODE "#include <stdio.h>%c%c#define GRACE %cGrace_kid.c%c%c#define CODE %c%s%c%c#define QUINE() int main(void) {FILE *file = fopen(GRACE, %cw+%c); if (!file) return (0); fprintf(file,CODE,10,10,34,34,10,34,CODE,34,10,34,34,10,10,10,10,10,10); fclose(file); return (0);}%c%cQUINE()%c%c/*%c Grace is done !%c*/"
#define QUINE() int main(void) {FILE *file = fopen(GRACE, "w+"); if (!file) return (0); fprintf(file,CODE,10,10,34,34,10,34,CODE,34,10,34,34,10,10,10,10,10,10); fclose(file); return (0);}

QUINE()

/*
 Grace is done !
*/