
CXX = g++
CXXFLAGS = -Wall -Wextra

shortest_path: src/main.cpp
	$(CXX) $(CXXFLAGS) src/main.cpp -o shortest_path

clean:
	rm -f shortest_path

.PHONY: clean
