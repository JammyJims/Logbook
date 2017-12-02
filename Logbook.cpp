#include "Logbook.h"
#include "Entry.h"
#include <fstream>
#include <string>
Logbook::Logbook(){
    // do nothing
}
Logbook::~Logbook(){
    // do nothing
}
void Logbook::Initialise(){
    std::string logbook_name = "book.csv";
    std::ofstream file;
    file.open(logbook_name);
    file << "some text\n";
}
void Logbook::Load(){

}
void Logbook::Write(){
    //Entry *new_entry = new Entry();
    //std::string text;
}