// CUDA programming: factorial problem CPU version

#include <stdio.h>
#include <math.h>
#include <string.h>
#include <stdlib.h>

void findFac( int* a,int* b,int* idx ,int n)
{
    int i;
    for(i=0;i<n;i++){
        if((*a)%(b[i]) == 0)
            *idx = i;
    }
}


//main routine
int main(int argc, char** argv){
    //check usage
    if (argc != 3){
        printf("usage: ./main [input file] [output file]\n");
        return 1;
    }
    
    int a_host;
    double tmp;
    int *b_host; //a for input num; b for sqrt array
    int id_host;
    FILE* input = fopen(argv[1],"r");
    fscanf(input,"%d",&a_host);
    fclose(input);
    printf("the input number is: %d\n",a_host);

    tmp = ceil(sqrt(a_host));
    b_host = (int*)malloc(tmp*sizeof(int));
    int i;
    for(i=0;i<tmp;i++)
        b_host[i] = i+1;

    // do calculation on GPU
    findFac(&a_host,b_host,&id_host, tmp);
    //retrive value from GPU device
    //print result
    printf("%d =  %d x %d\n",a_host,b_host[id_host],a_host/b_host[id_host]);

    free(b_host);

    return 0;

}
