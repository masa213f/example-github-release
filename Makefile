TARGET=sample
VERSION=unknown

all: mod build

mod: go.mod
	go mod tidy
	go mod vendor

build:
	go build -o $(TARGET) -ldflags "-X main.version=$(VERSION)" ./.

run:
	./$(TARGET)

clean:
	rm $(TARGET)

distclean: clean
	rm go.sum
	rm -rf vendor

.PHONY: all mod build run clean dstclean