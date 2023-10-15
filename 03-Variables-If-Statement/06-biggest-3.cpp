#include <iostream>

int main()
{
    int a, b;
    std::cout << "a = ";
    std::cin >> a;
    std::cout << "b = ";
    std::cin >> b;
    
    if (a > b) {
        std::cout << "Biggest Number : a = " << a << std::endl;
    } else if (b > a) {
        std::cout << "Biggest Number : b = " << b << std::endl;
    } else {
        std::cout << "Both are same. a = b" << std::endl;
    }
    return 0;
}