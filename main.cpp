#include <cv.h>
#include <highgui.h>
using namespace cv;

int main( int argc, char** argv )
{
    //Read Image
    Mat in_img,out_img;
    in_img = imread( argv[1], 1 );
    //Error handling
    if( argc < 3 ){
        printf( "Usage: ./%s <input-image-filename> <output-image-filename>\n",argv[0] );
        return -1;
    }

    //call GPU function for DIP
    out_img = cudaBlur(in_img);

    //Save image
    imwrite(argv[2],out_img);
    return 0;
}

