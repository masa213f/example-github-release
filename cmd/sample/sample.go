package main

import (
	"fmt"
	"io"
	"os"
)

var version string

func printVersion(o io.Writer, str string) {
	fmt.Fprintln(o, str)
}

func main() {
	printVersion(os.Stdout, version)
}
