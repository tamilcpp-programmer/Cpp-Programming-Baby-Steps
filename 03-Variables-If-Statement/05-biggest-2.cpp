#include <iostream>

int main()
{
    int a, b;
    std::cout << "a = "
    std::cin >> a;
    std::cout << "b = "
    std::cin >> b;

    std::cout << "a = " << a << std::endl;
    std::cout << "b = " << b << std::endl;
    
    if (a > b) {
        std::cout << "Biggest Number : a = " << a << std::endl;
    } else {
        std::cout << "Biggest Number : b = " << b << std::endl;
    }
    return 0;
}