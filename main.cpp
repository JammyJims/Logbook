#include <iostream>
#include <fstream>
#include "Entry.h"
#include "Logbook.h"
int main(){
    Entry test = Entry();
    std::cout << test.date;
    Logbook test2 = Logbook();
    test2.Initialise();
    //time_t timer;
    //time(&timer);
    //std::cout << ctime(&timer);
    return 0;
}
