#include <iostream>
#include <string>
#include <vector>

int main() {
    std::vector<std::string> names{"Anish", "Babu", "Deepak", "Suresh", "Udhay", "Vijay"};
    
    for (size_t i = 0; i < names.size(); i++) {
        std::cout << names[i] << std::endl;
    }
    return 0;
}
