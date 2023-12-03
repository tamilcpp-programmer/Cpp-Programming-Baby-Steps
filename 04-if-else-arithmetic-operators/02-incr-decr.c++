#include <iostream>

int main()
{
    int a, b;
    
    std::cout << "Enter a: ";
    std::cin >> a;
    std::cout << "Enter b: ";
    std::cin >> b;
    
    a++;
    b--;
    std::cout << "a = " << a << std::endl;
    std::cout << "b = " << b << std::endl;
    return 0;
}
