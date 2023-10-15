#include <iostream>

int main()
{
    int a, b;
    cout << "a = "
    cin >> a;
    cout << "b = "
    cin >> b;

    cout << "a = " << a << endl;
    cout << "b = " << b << endl;
    
    if (a > b) {
        cout << "Biggest Number : a = " << a << std::endl;
    } else {
        cout << "Biggest Number : b = " << b << std::endl;
    }
    return 0;
}