CXXFLAGS = -Wall -g -I.
CXXFLAGS += -D MAC=1
CPPFLAGS =

main.o: main.cpp
	g++ $(CPPFLAGS) $(CXXFLAGS) -c main.cpp

main: main.o
	g++ $(CPPFLAGS) $(CXXFLAGS) -o main main.o
