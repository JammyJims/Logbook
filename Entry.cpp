#ifndef _ENTRY_
#define _ENTRY_

#include <time.h>
#include <string>

class Entry{
public:
    Entry();
//private:
    std::string date;
};

Entry::Entry(){
    date = "N/A";
}

#endif