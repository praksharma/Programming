g++ add_cpu.cpp -o add
nvcc add_gpu_single_thread.cu -o add_gpu
sudo nvprof ./add_gpu
sudo nvprof --log-file profiling_result.log ./add_gpu
echo "compile success"