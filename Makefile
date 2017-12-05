#########################################################
# 
# This is a make file that uses variable names to compile
# all of my files 
# 
#########################################################

# Assignments
#########################################################
VPATH := .
CC := g++
SRC := src/
BUILD := build/
INCLUDE := include/
TARGET := bin/driver
LIB := lib/
TESTS := tests/

CFLAGS := -g -Wall -Wextra
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

$RM := rm -f *.o *.exe driver

#########################################################

#  $(TARGET): $(TARGET).c
#  	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c

driver: Logbook.o Entry.o
	g++ build/Logbook.o build/Entry.o build/main.o -o bin/driver
main.o: main.cpp
	g++ -c main.cpp
Logbook.o: Entry.o include/Logbook.cpp include/Logbook.h
	g++ -c include/Logbook.cpp
Entry.o: include/Entry.cpp include/Entry.h
	g++ -c include/Entry.cpp
	
#all: $(TARGET)
#	echo "$(OBJECTS)"
#$(TARGET): $(OBJECTS)/%o
#	$(CC) $(CFLAGS) -o $(TARGET) main.cpp $(OBJECTS)
#
#$(OBJECTS)/%.o: $(SRCDIR)/%.$(SRCEXT)
#	$(CC) -c $(CFLAGS) 

#Logbook.o: Entry.o Logbook.h
#	$(CC) -c $(SRCDIR)/%Logbook.cpp
#
#Entry.o: Entry.h
#	$(CC) -c $(SRCDIR)/%Entry.cpp

clean:
	$(RM) $(TARGET)
