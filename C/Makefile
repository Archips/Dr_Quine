.PHONY: all clean fclean re

all: Colleen Grace Sully

Colleen: Colleen.o
	clang -Wall -Wextra -Werror Colleen.c -o Colleen

Grace: Grace.o
	clang -Wall -Wextra -Werror Grace.c -o Grace

Sully: Sully.o
	clang -Wall -Wextra -Werror Sully.c -o Sully

clean:
	@if [ -f "Colleen.o" ]; then rm Colleen.o; fi
	@if [ -f "Grace.o" ]; then rm Grace.o; fi
	@if [ -f "Grace_kid.c" ]; then rm Grace_kid.c; fi
	@if [ -f "Sully.o" ]; then rm Sully.o; fi
	@if [ -f "Sully_4.c" ]; then rm Sully_4.c; fi
	@if [ -f "Sully_3.c" ]; then rm Sully_3.c; fi
	@if [ -f "Sully_2.c" ]; then rm Sully_2.c; fi
	@if [ -f "Sully_1.c" ]; then rm Sully_1.c; fi
	@if [ -f "Sully_0.c" ]; then rm Sully_0.c; fi

fclean: clean
	@if [ -f "Colleen" ]; then rm Colleen; fi
	@if [ -f "Grace" ]; then rm Grace; fi
	@if [ -f "Sully" ]; then rm Sully; fi
	@if [ -f "Sully_4" ]; then rm Sully_4; fi
	@if [ -f "Sully_3" ]; then rm Sully_3; fi
	@if [ -f "Sully_2" ]; then rm Sully_2; fi
	@if [ -f "Sully_1" ]; then rm Sully_1; fi
	@if [ -f "Sully_0" ]; then rm Sully_0; fi

re: fclean all
