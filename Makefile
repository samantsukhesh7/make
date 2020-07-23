.DEFAULT_GOAL := all #otherwise the first task is the default one

CXX = g++ #compiler
CXXFLAGS = -Wall -g  #flags for the compiler program
CXXFLAGS += -DMAC=1

#CXXFLAGS source:https://gcc.gnu.org/onlinedocs/gcc/Option-Summary.html \
    -Wall : enables all warnings \
    -g<level> : debugging information default level is 2. for macros debugging use level 3 \
    -D<macro> : pass macro to the program
BIN := bin
SRC := src
INCLUDE := include
LIBS := libs
EXECUTABLE := main


clear:
	@echo "Clearing..."
	-rm $(BIN)/*

all:
	@echo "Do everything!!"
	clear
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp
	@echo "Compilling..."
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) -L$(LIB) $^ -o $@ $(LIBRARIES)
# $^ : target name \
    $@: all prereqs \
    more on: https://www.gnu.org/software/make/manual/html_node/Automatic-Variables.html#Automatic-Variables


help:
	@echo "Sample Makefile"


	
