all: program

program: Logbook.o Entry.o
	g++ -o program.exe main.cpp Logbook.o Entry.o -Wall

Logbook.o: Entry.o
	g++ -c Logbook.cpp

Entry.o:
	g++ -c Entry.cpp

clean:
	rm -f *.o *.exe driver
