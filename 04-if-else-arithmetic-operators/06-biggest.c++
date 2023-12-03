#include <iostream>

int main()
{
    int a, b;
    
    std::cout << "Enter a: ";
    std::cin >> a;
    std::cout << "Enter a: ";
    std::cin >> b;
    
    if (a > b) {
        std::cout << "Biggest Number : a = " << a << std::endl;
    } else {
        std::cout << "Biggest Number : b = " << b << std::endl;
    }

    return 0;
}
