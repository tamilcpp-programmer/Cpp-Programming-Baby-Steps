#include <iostream>
#include <string>
#include <vector>

int main() {
    std::vector<std::string> names{"Anish", "Babu", "Deepak", "Suresh", "Udhay", "Vijay"};
    size_t i = 0;
    
    do {
        std::cout << names[i] << std::endl;
        i++;
    } while (i < names.size());
    return 0;
}
