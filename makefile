FLAG = -Werror -Wextra -Wall
 
all : stepik

stepik : stepik.o 
	gcc $(FLAG) build/stepik.o -o build/stepik

stepik.o : stepik.c
	gcc $(FLAG) -c stepik.c -o build/stepik.o


clean : 
	rm -rf build/*.o 
	rm -rf build/stepik
	rm -rf a.out

rebuild :
	make clean
	make all

leaks :
	leaks -atExit -- build/stepik

clang: 
	clang-format -i *.c

cpp :
	cppcheck --enable=all --suppress=missingIncludeSystem *.c
