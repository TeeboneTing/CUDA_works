#include <cv.h>
#include <highgui.h>

using namespace cv;

int main( int argc, char** argv )
{
    //Read Image
    Mat image;
    image = imread( argv[1], 1 );
    //Error handling
    if( argc < 3 ){
        printf( "Usage: ./%s <input-image-filename> <output-image-filename>\n",argv[0] );
        return -1;
    }


    //Save image
    imwrite(argv[2],image);
    return 0;
}

