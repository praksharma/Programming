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

## Profiling
There are two profiling tools for NVIDIA GPUs.
* `nvprof` : For GPUs with compute capability < 8.
* `nsys` : NVIDIA Nsight Systems for GPUs with compute capability > 8.

One can check the computer capability with
```sh
nvidia-smi --query-gpu=compute_cap --format=csv
```

A profiling tool tells you how long the kernel takes to run the code. The command is simply 
* `nvprof ./compiled_executable`
* `nsys profile --stats=true ./compiled_executable`

I couldn't get the `nvprof` work with the NVIDIA GeForce GTX 1050 Ti. So, I will submit a job to SUNBIRD. 

Recently, the functionality of `nvprof` has been [broken into 2 separate tools](https://stackoverflow.com/a/66647812/14598633) in the "new" profiling tools. We are particularly interested in `nsys` not `ncu`.

To save the output in a log file we can use the following command.

```sh
nsys nvprof --print-gpu-trace ./add_gpu
```

We need to be very careful, that the CUDA module version matches the GNU G++ compiler version. See `job.sh` for specific versions.

## Files
* `add_cpu.cpp` : calculation with single core CPU
* `add_gpu_single_thread.cu` : calculation with single thread GPU