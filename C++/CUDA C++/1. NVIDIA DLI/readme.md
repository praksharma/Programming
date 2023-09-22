# C++ CUDA Compiler
So, the CUDA needs a special C++ compiler called the `nvcc` compiler. We can install CUDA toolkit with the following command.

```
sudo apt install nvidia-cuda-toolkit
```

## Basic implementation
All we have to do is to add the `__global__` to the function and the CUDA C++ compiler will compile it to run on the GPU.
These `__global__` functions are known as kernels, and code that runs on the GPU is often called device code, while code that runs on the CPU is host code.

## Memory Allocation
The first thing we need to do is to allocate memory on the GPU for the input and output arrays. 
The unified [memory](https://developer.nvidia.com/blog/unified-memory-in-cuda-6/) allows easily share the data between CPU and GPU memory.

We can use `cudaMallocManaged()`, which returns a pointer that you can access from host (CPU) code or device (GPU) code.  To free the data, just pass the pointer to `cudaFree()`.

We need to replace `new` with `cudaMallocManaged()`, and `delete []` with `cudaFree()`.

Finally, we need to call `add()` function using the triple angle bracket syntax `<<< >>>` as follows:
```
add<<<1, 1>>>(N, x, y);
```
This line will launch the function on GPU thread. Another thing, we need to ask the CPU to wait for the GPU to access the results. This is because the CUDA kernel doesn't block the CPU thread. We can do this with `cudaDeviceSynchronize()` before doing error checking on CPU.