// CUDA programming: factorial problem

#include <iostream>
#include <cmath>
// kernel function in GPU
__global__ void findFac( int* a,int* idx ,int n)
{
    int id = blockIdx.x*blockDim.x + threadIdx.x;
    if(id < n){
        //printf("id=%d  %d mod %d == %d\n",id,(*a),b[id],(*a)%b[id]);
        int b;
        id == 0 ? b=2 : b= 1+2*id;
        if((*a)%b == 0)
            *idx = b;
    }
}

//#define N 1
#define block 100

//main routine
int main(int argc, char** argv){
    //check usage
    if (argc != 3){
        printf("usage: ./main [input file] [output file]\n");
        return 1;
    }
    
    int a_host,id_host;
    double tmp;
    int  *a_cuda, *id_cuda; //indicates which b_cuda[id] factorial
    FILE* input = fopen(argv[1],"r");
    fscanf(input,"%d",&a_host);
    fclose(input);
    
    tmp = ceil(sqrt(a_host))/2;

    cudaMalloc((void **) &a_cuda, sizeof(int)) ; 
    cudaMemcpy(a_cuda,&a_host,sizeof(int),cudaMemcpyHostToDevice) ;
    cudaMalloc((void **) &id_cuda, sizeof(int)) ; 

    //int block_size = int(tmp)/block + (int(tmp)%block == 0 ? 0:1);
    // do calculation on GPU
    //findFac <<< block, block_size >>>(a_cuda,id_cuda, tmp);
    findFac <<< 1, tmp >>>(a_cuda,id_cuda, tmp);
    //retrive value from GPU device
    cudaMemcpy(&id_host,id_cuda,sizeof(int),cudaMemcpyDeviceToHost);

    cudaFree(a_cuda);
    cudaFree(id_cuda);

    //output result to file
    FILE* output = fopen(argv[2],"w");
    fprintf(output,"%d\n%d\n",a_host/id_host,id_host);
    fclose(output);
    return 0;

}
