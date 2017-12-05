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
	g++ build/Logbook.o build/Entry.o build/main.o -o driver
main.o: Logbook.o Entry.o
	g++ -c main.cpp
Logbook.o: Entry.o Logbook.h
	g++ -c lib/Logbook.cpp
Entry.o: 
	g++ -c lib/Entry.cpp

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
