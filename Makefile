#########################################################
# 
# This is a make file that uses variable names to compile
# all of my files 
# 
#########################################################

# Assignments
#########################################################
CC := g++
SRC := src/
BUILD := build/
INCLUDE := include/
TARGET := bin/driver
LIB := lib/
TESTS := tests/

CCFLAGS := -g -Wall -Wextra -I $(INCLUDE)


#########################################################

driver: Logbook.o Entry.o main.o
	g++ Logbook.o Entry.o main.o -o driver
	
main.o: main.cpp
	g++ -c main.cpp $(CCFLAGS) 
	
Logbook.o: 
	g++ -c $(CCFLAGS) $(LIB)Logbook.cpp
	
Entry.o:
	g++ -c $(CCFLAGS) $(LIB)Entry.cpp 

test:
	g++ -c $(CCFLAGS) $(LIB)Logbook.cpp

clean:
	rm -f *.o *.exe driver
	

