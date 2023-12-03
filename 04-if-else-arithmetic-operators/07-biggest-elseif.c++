#include <iostream>

int main()
{
    int a, b;
    
    std::cout << "Enter a: ";
    std::cin >> a;
    std::cout << "Enter b: ";
    std::cin >> b;
    
    if (a > b) {
        std::cout << "Biggest Number : a = " << a << std::endl;
    } else if (b > a) {
        std::cout << "Biggest Number : b = " << b << std::endl;
    } else {
        std::cout << "a and b are same. value = " << a << std::endl;
    }

    return 0;
}
