/*
identifiers are the things we define.
include and main are predefined-identifiers not keywords.
pre-defined identifiers :  cin, cout, endl, include, iostream, iomanip, main, stf, string
keywords are for, switch, goto, int, float, if, else etc.

So, we can varible names such as main or include
*/


#include<iostream>

int main()
{
    int main = 10; // a varible named main
    int include = 1; // a variable named include
    int cin = 1; // a variable named cin
    int string = 15;  // a variable named string
    std::cout<<"main = "<<main<<std::endl;
    std::cout<<"include = "<<include<<std::endl;
    std::cout<<"cin ="<<cin<<std::endl;
    std::cout<<"string ="<<string<<std::endl;
    return 0;
}

/*
Now you know how namespace prevents names conflicts. The cin is available in the current namespace and in std namespace too.
Now you also know why Python implemented the concept of namespace. 
*/