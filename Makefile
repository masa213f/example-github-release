TARGET=sample semver
VERSION=unknown

all: mod build

mod: go.mod
	go mod tidy
	go mod vendor

build: $(TARGET)

sample: go.mod ./cmd/sample/main.go
	go build -ldflags "-X main.version=$(VERSION)" ./cmd/sample

semver: go.mod ./cmd/semver/main.go
	go build ./cmd/semver

run:
	./$(TARGET)

clean:
	rm $(TARGET)

distclean: clean
	rm go.sum
	rm -rf vendor

.PHONY: all mod build run clean dstclean