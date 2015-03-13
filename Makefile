all: build

build: main.cpp
	$(CXX) -Wall -o main main.cpp	
clean:
	rm -f *.a main
	