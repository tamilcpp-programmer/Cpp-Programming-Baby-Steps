#include <iostream>
#include <string>
#include <vector>

int main() {
    std::vector<std::string> names{"Anish", "Babu", "Deepak", "Suresh", "Udhay", "Vijay"};

    for (std::string name : names) {
        std::cout << name << std::endl;
    }
    return 0;
}
