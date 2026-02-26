CC=clang++
CFLAGS= -std=c++17 -Wall -Wextra -I/opt/homebrew/include
LDFLAGS= -L/opt/homebrew/lib -Wl,-rpath,/opt/homebrew/lib -lSDL3 -lm 

SRC= *.cpp
OUT=XPedition

all: build

build:
	$(CC) $(SRC) -o $(OUT) $(CFLAGS) $(LDFLAGS) 

clean:
	rm $(OUT)

run:
	./$(OUT)

