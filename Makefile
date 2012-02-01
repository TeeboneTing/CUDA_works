all:
	export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
	export LD_LIBRARY_PATH=/usr
	g++ -bind_at_load `pkg-config --cflags opencv` main.c -o helloCV `pkg-config --libs opencv`
	#gcc main.c -o helloCV -I /usr/local/include/opencv -L /usr/local/lib -lm -lopencv
run:
	time ./helloCV beauty.bmp

clean:
	rm helloCV
