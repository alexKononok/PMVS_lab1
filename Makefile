binary: main.o libworld.so
	gcc -o binary main.o -L. -lworld -Wl,-rpath,.

main.o: main.c
	gcc -c main.c

libworld.so: hello.o goodbye.o
	gcc -shared -o libworld.so hello.o goodbye.o

hello.o: hello.c
	gcc -c -fPIC hello.c

goodbye.o: goodbye.c
	gcc -c -fPIC goodbye.c

clean:
	rm -f *.o *.so binary
