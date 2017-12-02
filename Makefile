all: program

program: Logbook.o
	g++ -o program.exe main.cpp Logbook.o -Wall

Logbook.o: Entry.o Logbook.h
	g++ -c Logbook.cpp

Entry.o: Entry.h
	g++ -c Entry.cpp

clean:
	rm -f *.o *.exe driver
