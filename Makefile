SHELL := /bin/bash

.PHONY: hello build compile

hello:
	@echo "hello"

build:
	go build -o bin/main main.go

run:
	go run main.go

compile:
	@echo "Compiling for every OS and Platform"
	GOOS=linux GOARCH=arm go build -o bin/main-linux-arm main.go
	GOOS=linux GOARCH=arm64 go build -o bin/main-linux-arm64 main.go
	GOOS=freebsd GOARCH=386 go build -o bin/main-freebsd-386 main.go


# .PHONY: all say_hello generate clean

# all: say_hello generate 

# say_hello:
# 	@echo "Hello world"

# generate:
# 	@echo "Creating empty text files..."
# 	touch file-{1..10}.txt 

# clean:
# 	@echo "Cleaning all txt files...."
# 	rm *txt

# .PHONY = all clean

# CC = gcc

# LINKERFLAG := -lm
# SRCS := $(wildcard *.c)
# BINS := $(SRCS:%.c=%)

# all: ${BINS}

# %: %.o
# 	@echo "Checking...."
# 	${CC} ${LINKERFLAG} $< -o $@

# %.o: %.c
# 	@echo "Creating object..."
# 	${CC} -c $<

# clean:
# 	@echo "Cleaning up....."
# 	rm -rvf *.o ${BINS}