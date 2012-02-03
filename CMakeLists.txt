project(cuda_test)
cmake_minimum_required(VERSION 2.8)
find_package(CUDA)
cuda_add_executable(cuda_test cuda_test.cu)
