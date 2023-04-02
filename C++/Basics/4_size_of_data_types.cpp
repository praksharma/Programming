#include<iostream>
#include<iomanip>
#include<limits>
/*
1 byte = 8 bits (ASCII needs 8 bits to represent a character)
int : 4 bytes on 32 and 64 bit systems, 2 bytes on 16 bit systems
float : 4 bytes

Here is a list of size for 23 and 64 bit systems : https://docs.oracle.com/cd/E19253-01/817-6223/chp-typeopexpr-2/index.html

*/

int main()
{
    //std::cout<<"Size of void = "<<sizeof(void)<<std::endl;
    std::cout<<"Size of int = "<<sizeof(int)<<std::endl;
    std::cout<<"Size of short int = "<<sizeof(short int)<<std::endl;
    std::cout<<"Size of long = "<<sizeof(long)<<std::endl;
    std::cout<<"Size of long long = "<<sizeof(long long)<<std::endl;
    
    std::cout<<"Size of float = "<<sizeof(float)<<std::endl;

    std::cout<<"Size of double = "<<sizeof(double)<<std::endl;
    std::cout<<"Size of long double = "<<sizeof(long double)<<std::endl;
    //std::cout<<"Size of string = "<<sizeof(std::string)<<std::endl;

    std::cout<<"Default precision digits = "<<std::cout.precision()<<std::endl;
    double x = 44.41245782585558525;
    std::cout<<"Print long number = "<<x<<std::endl;
    
    std::cout<<std::setprecision(20);
    std::cout<<"Print long number = "<<x<<std::endl;

    // number of digits a data type can represent
    std::cout<<std::numeric_limits<float>::digits10<<std::endl; //digits10 is for decimal
    return 0;
}