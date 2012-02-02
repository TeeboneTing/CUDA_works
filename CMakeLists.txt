project( HelloCV )
find_package( OpenCV REQUIRED )
add_executable( HelloCV HelloCV )
target_link_libraries( HelloCV ${OpenCV_LIBS} )
