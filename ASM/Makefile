.PHONY: all clean fclean re

all: Colleen Grace Sully

Colleen: Colleen.s
	nasm -f elf64 Colleen.s -o Colleen.o
	clang -Wall -Wextra -Werror Colleen.o -o Colleen

Grace: Grace.s
	nasm -f elf64 Grace.s -o Grace.o
	clang -Wall -Wextra -Werror Grace.o -o Grace

Sully: Sully.s
	nasm -f elf64 Sully.s -o Sully.o
	clang -Wall -Wextra -Werror Sully.o -o Sully

clean:
	@if [ -f "Colleen.o" ]; then rm Colleen.o; fi
	@if [ -f "Grace.o" ]; then rm Grace.o; fi
	@if [ -f "Grace_kid.s" ]; then rm Grace_kid.s; fi
	@if [ -f "Sully.o" ]; then rm Sully.o; fi
	@if [ -f "Sully_4.o" ]; then rm Sully_4.o; fi
	@if [ -f "Sully_3.o" ]; then rm Sully_3.o; fi
	@if [ -f "Sully_2.o" ]; then rm Sully_2.o; fi
	@if [ -f "Sully_1.o" ]; then rm Sully_1.o; fi
	@if [ -f "Sully_0.o" ]; then rm Sully_0.o; fi

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
