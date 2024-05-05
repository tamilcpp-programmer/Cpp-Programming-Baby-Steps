#include <iostream>
#include <string>
#include <vector>

int main() {
    std::vector<std::string> names{"Anish", "Babu", "Deepak", "Suresh", "Udhay"};
    
    std::cout << names[4] << std::endl;
    std::cout << names.size() << std::endl;
    
    names.push_back("Vijay");
    std::cout << names[5] << std::endl;
    std::cout << names.size() << std::endl;
    return 0;
}
