
// Linking modules/libraries
#include<iostream>

// define global variables
#define PI 3.1415

// define global variables
int r = 2 ;

// function prototype, so the compiler won't throw undefined function and we can later define the function.
// Here we used call by value
float area(int b) ;

// A class minimal
class myclass
{
    private:
        int pri = 10;
    public:
        int a;
        void display()
        {
            std::cout<<"a = "<<a<<std::endl;
            std::cout<<"private varibale (inside) = "<<pri<<std::endl;
        }
};

// After the standardisation, you can't use void main()
int main ()
{
    myclass classobj;
    classobj.a = 5;
    classobj.display();
    float obj_area;
    obj_area = area(classobj.a);
    std::cout<<"Area = "<<obj_area<<std::endl;
    // std::cout<<"private varibale (inside) = "<<myclass.pri<<std::endl; // can't access private objects outside the class without implementing a custom member function.

    return 0;
}

// A function definition with call by value passing
float area(int b)
{
    float area;
    area = PI*b*b;
    return area;
    //std::cout<<"Area = "<<area<<std::endl;
}


