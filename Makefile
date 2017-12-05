#########################################################
# 
# This is a make file that uses variable names to compile
# all of my files 
# 
#########################################################

# Assignments
#########################################################
CC := g++
SRC := src
BUILD := build
INCLUDE := include
TARGET := bin/driver
LIB := lib
TESTS := tests

CFLAGS := -g -Wall -Wextra

PATH := -I $(INCLUDE)


#OBJECTS
#CC := g++
#SRCDIR := src
#BUILDDIR := build
#INCLUDEDIR := include
#TARGET := bin/demo
#
#SRCEXT := cpp
#SOURCES := $(shell find $(SRCDIR) -type f -name *.$(SRCEXT))
#OBJECTS := $(patsubst $(SRCDIR)/%,$(BUILDDIR)/%,$(SOURCES:.$(SRCEXT)=.o))
#CFLAGS := -g -Wall
#LIB := -pthread -lmongoclient -L lib -lboost_thread-mt -lboost_filesystem-mt -lboost_system-mt
#INC := -I include


#########################################################
driver: Logbook.o Entry.o
	g++ Logbook.o Entry.o main.o -o driver
	
main.o: main.cpp
	g++ -c main.cpp 
	
Logbook.o: 
	g++ -c $(PATH) $(LIB)/Logbook.cpp
	
Entry.o:
	g++ -c $(PATH) $(LIB)/Entry.cpp 

test:
	g++ -c $(PATH) $(LIB)/Logbook.cpp

clean:
	rm -f *.o *.exe driver
