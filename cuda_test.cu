// Teebone's first CUDA programming
#include <stdio.h>

// kernel function in GPU
__global__ void square_num(float* a, int n)
{
    int id = blockIdx.x*blockDim.x + threadIdx.x;
    if(id < n)
        a[id] = a[id]*a[id];
}

#define N 10
#define block_size 4

//main routine
int main(){
    float *a_host, *a_cuda;
    a_host = (float*)malloc(N*sizeof(float)); // float number in host(CPU).
    cudaMalloc((void **) &a_cuda, N*sizeof(float)); //float number in device(GPU)
    
    for(int i=0;i<N;i++)
        a_host[i] = (float)i;

    cudaMemcpy(a_cuda,a_host,N*sizeof(float),cudaMemcpyHostToDevice);
    int num_blocks = N/block_size + (N%block_size == 0 ? 0:1);
    // do calculation on GPU
    square_num <<< num_blocks, block_size >>>(a_cuda, N);
    //retrive value from GPU device
    cudaMemcpy(a_host,a_cuda,N*sizeof(float),cudaMemcpyDeviceToHost);
    //print result
    for(int i=0;i<N;i++)
        printf("a[%d] = %f\n",i,a_host[i]);

    free(a_host);
    cudaFree(a_cuda);
    return 0;

}
