project( BLUR )
find_package( OpenCV REQUIRED )
add_executable( hello main.cpp )
target_link_libraries( hello ${OpenCV_LIBS} )
