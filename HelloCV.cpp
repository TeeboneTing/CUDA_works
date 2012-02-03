#include <stdio.h>
#include <stdlib.h>
#include <cv.h>
#include <math.h>
#include <highgui.h>
int main ( int argc ,  char  * argv [ ] ) 
{ 
    IplImage *img = 0;  
    int height, width, step, channels; 
    uchar *data; 
    int i,j,k; 

    if ( argc < 3 ) { 
        printf ( "Usage: main <image-file-name> <output-file-name>\n" ) ; 
        exit ( 0 ) ; 
    } 

    // load an image   
    img = cvLoadImage( argv[1],0 ) ; 
    if ( !img ) { 
        printf ( "Could not load image file: %s \n " , argv [ 1 ] ) ; 
        exit ( 0 ) ; 
    } 

    // get the image data 
    height     = img -> height ; 
    width      = img -> width ; 
    step       = img -> widthStep ; 
    channels   = img -> nChannels ; 
    data       =  (uchar*) img -> imageData ; 
    printf ( "Processing a %dx%d image with %d channels \n " , height , width , channels ) ; 

    // create a window 
    //cvNamedWindow ( "mainWin" , CV_WINDOW_AUTOSIZE ) ;  
    //cvMoveWindow ( "mainWin" ,  100 ,  100 ) ; 

    // invert the image 
    //相當於cvNot(img); 
    // IplImage *pDstImg = cvCreateImage(cvGetSize(img),img->depth,img->nChannels); 
    // cvNot(img, pDstImg); 
    for ( i = 0 ; i < height ; i ++ )  for ( j = 0 ; j < width ; j ++ )  for ( k = 0 ; k < channels ; k ++ ) 
        data [i*step + j*channels + k ] = 255 - data [ i*step + j*channels + k ] ; 

    // show the image 
    //cvShowImage ( "mainWin" , img ) ; 

    // wait for a key 
    //cvWaitKey ( 0 ) ; 

    //save to file
    
    // release the image 
    cvReleaseImage ( & img ) ; 
    return  0 ; 
}
