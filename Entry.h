#ifndef _ENTRY_H
#define _ENTRY_H

#include <time.h>
#include <string>
class Entry{
public:
    Entry();
    ~Entry();
    Entry(std::string date);
//private:
    std::string date;
    std::string text;
};

#endif