#########################################################
# 
# This is a make file that uses variable names to compile
# all of my files. Note that the order of the variable
# declarations matter so make sure to define directories 
# then compiled objects, then compilation flags before
# running the compilation commands. Do not use variable 
# names such as "PATH" as they will overwrite the default
# environment variables  
# 
#########################################################

# Assignments
#########################################################

# Directory variables
SRCDIR := src/
BUILDDIR := build/
INCLUDEDIR := include/
LIBDIR := lib/
TESTSDIR := tests/
GTESTDIR := googletest/googletest/include/

# Compiled Objects
OBJS := main.o Logbook.o Entry.o

# Compilation flags
CC := g++
TARGET := bin/driver
CCFLAGS := -g -Wall -Wextra -I $(INCLUDEDIR)

LD_FLAGS := -L/usr/lib -lgtest -lgtest_main -pthread
TFLAGS := -I $(GTESTDIR)


#########################################################

driver: Logbook.o Entry.o main.o
	g++ Logbook.o Entry.o main.o -o driver
	
main.o: main.cpp
	g++ -c main.cpp $(CCFLAGS) 
	
Logbook.o: 
	g++ -c $(CCFLAGS) $(LIBDIR)Logbook.cpp
	
Entry.o:
	g++ -c $(CCFLAGS) $(LIBDIR)Entry.cpp 

test:
	g++  test.cpp -o test.out $(CCFLAGS) -L/usr/lib -lgtest_main -lgtest -lpthread
		
clean:
	rm -f *.o *.exe driver
	

