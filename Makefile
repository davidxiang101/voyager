# Makefile

CXX = g++
CXXFLAGS = -Iinclude
SOURCES = $(wildcard src/*.cpp)
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = MyCppProject

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
    $(CXX) $(OBJECTS) -o $@

%.o: %.cpp
    $(CXX) $(CXXFLAGS) -c $< -o $@

clean:
    rm -f src/*.o $(EXECUTABLE)

