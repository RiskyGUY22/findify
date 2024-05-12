SRC = main.c
CC ?= clang

all: findify

findify: $(SRC)
	$(CC) -O3 -Wall $(SRC) -o findify -I. -lm

clean:
	rm -f findify

install: all
	mkdir -p /usr/local/bin
	cp -f findify /usr/local/bin
	chmod 755 /usr/local/bin/findify

.phony: all clean
