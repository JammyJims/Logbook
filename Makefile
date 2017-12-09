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

LD_FLAGS := -L googletest/googletest/src -l gtest -l pthread
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
	g++ -c -o compare-string.o $(TFLAGS) compare-string.cpp
	g++ test.cpp $(CCFLAGS) $(TFLAGS) $(LD_FLAGS) compare-string.o -o test.out

clean:
	rm -f *.o *.exe driver
	

