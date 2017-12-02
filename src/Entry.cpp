#include <string>
#include <time.h>
#include "Entry.h"
Entry::Entry(){
    this->date = today();
    this->text = "";
}
Entry::Entry(std::string text){
    this->date = today();
    this->text = text;
}
std::string Entry::Date() {return date;}
std::string Entry::Text() {return text;}
std::string Entry::today(){
    time_t timer;
    time(&timer);
    std::string todays_date = ctime(&timer);
    return todays_date;
}
