all: build

build: $(OBJECTS_MAIN)
	$(CXX) $(CXXFLAGS) -o $@ $^
	
# Automatic rule for all object files in build directory
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -fr $(OBJECTS_MAIN) $(OBJECTS_TEST)
	