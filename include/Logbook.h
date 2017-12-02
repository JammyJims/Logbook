#ifndef _LOGBOOK_H
#define _LOGBOOK_H
#include "Entry.h"
#include <list>
class Logbook{
public:
    Logbook();
    ~Logbook();
    void Initialise();
    void Write();
    void Write(std::string text);
    void Load();
private:
    unsigned int consecutive_days;
    std::list<Entry> entries;
};

#endif
