all:
	gcc main.c -o helloCV -I /usr/local/include/opencv -L /usr/local/lib -lm -lcv -lhighgui -lcvaux
run:
	time ./helloCV beauty.bmp

clean:
	rm helloCV
