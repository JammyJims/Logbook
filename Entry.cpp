#include <string>
#include <time.h>
#include "Entry.h"
Entry::Entry(){
    time_t timer;
    time(&timer);
    this->date = ctime(&timer);
    this->text = "";
}
Entry::~Entry(){
    // do nothing
}
Entry::Entry(std::string date){
    this->date = date;
    this->text = "";
}