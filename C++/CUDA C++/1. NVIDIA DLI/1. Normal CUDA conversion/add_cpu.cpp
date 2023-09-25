#include <iostream>
#include <math.h>

// function to add the elements of two arrays
void add(int n, float *x, float *y)
{
    for (int i = 0; i < n; i++)
        y[i] = x[i] + y[i];
}

int main(void)
{
    // initializes an integer variable N with the value 1,048,576
    int N = 1 << 20; // 1M elements using  left bitwise shift operator

    // declare two pointers to float
    float *x = new float[N]; // float of size N
    float *y = new float[N]; // float of size N

    // initialize x and y arrays on the host
    for (int i = 0; i < N; i++)
    {
        x[i] = 1.0f; // 1.0f is a float
        y[i] = 2.0f;
    }

    // Run kernel on 1M elements on the CPU
    add(N, x, y);   // call add function with x and y as call by reference

    //std::cout<<"x[0] = "<<x[0]<<"\n y[0] = "<<y[0]<<std::endl;

    //check for errors (all values should be 3.0f)
    float maxError = 0.0f; // initialize maxError to 0.0f
    for (int i = 0; i < N; i++)
        maxError = fmax(maxError, fabs(y[i] - 3.0f)); // fabs is absolute value function
    std::cout << "Max error: " << maxError << std::endl;

    //Free Memory
    delete [] x;
    delete [] y;

    return 0;
}