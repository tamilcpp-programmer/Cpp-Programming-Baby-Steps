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
    }
    if (b > a) {
        std::cout << "Biggest Number : b = " << b << std::endl;
    }
    if (a == b) {
        std::cout << "a and b are same. value = " << a << std::endl;
    }

    return 0;
}
