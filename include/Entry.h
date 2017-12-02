#ifndef _ENTRY_H
#define _ENTRY_H

#include <time.h>
#include <string>
class Entry{
public:
    Entry();
    Entry(std::string text);
    std::string Date();
    std::string Text();
private:
    std::string date;
    std::string text;
    std::string today();
};

#endif
