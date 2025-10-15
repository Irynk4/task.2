CC=g++
CFLAGS=-c -Wall
LIB=libcalculator.a
TARGET=main_app

all: $(TARGET)

$(TARGET): main.o $(LIB)
	 $(CC) main.o -L. -lcalculator -o $(TARGET)

$(LIB): calculator.o
	ar rcs $(LIB) calculator.o

main.o: main.cpp
	$(CC) $(CFLAGS) $< -o $@

calculator.o: calculator.cpp
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f *.o $(LIB) $(TARGET)

.PHONY: all clean
