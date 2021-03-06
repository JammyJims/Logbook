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
    //std::string logbook_name = "book.csv";
    std::fstream file;
    file.open("book.csv", std::fstream::in | std::fstream::out | std::fstream::app);
    file << "some text\n";
}
void Logbook::Load(){

}
void Logbook::Write(){
    Entry new_entry = Entry();
    std::fstream file;
    file.open("book.csv", std::fstream::in | std::fstream::out | std::fstream::app);
    file << new_entry.Date();
}
void Logbook::Write(std::string text){
    Entry new_entry = Entry(text);
    std::fstream file;
    file.open("book.csv", std::fstream::in | std::fstream::out | std::fstream::app);
    file << new_entry.Date() << new_entry.Text();
}
