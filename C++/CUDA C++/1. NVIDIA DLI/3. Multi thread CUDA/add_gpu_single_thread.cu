#include<iostream>
#include<math.h>

// Kernel function to add the elements of two arrays
__global__
void add(int n, float *x, float *y)
{
  int index = threadIdx.x;
  int stride = blockDim.x;
  for (int i = index; i < n; i += stride)
      y[i] = x[i] + y[i];
}


int main(void)
{
    // initializes an integer variable N with the value 1,048,576
    int N = 1 << 20; // 1M elements using  left bitwise shift operator
    float *x, *y;

    // Allocate Unified Memory – accessible from CPU or GPU
    cudaMallocManaged(&x, N * sizeof(float)); // allocates memory of size N * sizeof(float) in the unified memory and points x to it
    cudaMallocManaged(&y, N * sizeof(float)); // allocates memory of size N * sizeof(float) in the unified memory and points y to it

    // initialize x and y arrays on the host
    for (int i = 0; i < N; i++) {
        x[i] = 1.0f;
        y[i] = 2.0f;
    }

    // Run kernel on 1M elements on the CPU
    add<<<1, 256>>>(N, x, y);   // call add function in the GPU with 1 block and 256 thread

    // Wait for GPU to finish before accessing on host
    cudaDeviceSynchronize();

    //check for errors (all values should be 3.0f)
    float maxError = 0.0f; // initialize maxError to 0.0f
    for (int i = 0; i < N; i++)
        maxError = fmax(maxError, fabs(y[i] - 3.0f)); // fabs is absolute value function
    std::cout << "Max error: " << maxError << std::endl;

    // Free memory from unified memory
    cudaFree(x);
    cudaFree(y);

    return 0;
}

