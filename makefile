FLAG = -Werror -Wextra -Wall
 
all : stepik

stepik : spiral.o 
	gcc $(FLAG) build/spiral.o -o build/spiral

spiral.o : spiral.c
	gcc $(FLAG) -c spiral.c -o build/spiral.o


clean : 
	rm -rf build/*.o 
	rm -rf build/spiral
	rm -rf a.out

rebuild :
	make clean
	make all

leaks :
	leaks -atExit -- build/spiral

clang: 
	clang-format -i *.c

cpp :
	cppcheck --enable=all --suppress=missingIncludeSystem *.c
