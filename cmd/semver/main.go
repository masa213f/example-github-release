package main

import (
	"flag"
	"fmt"
	"os"

	"github.com/blang/semver"
)

func main() {
	flag.Parse()
	args := flag.Args()
	if len(args) != 1 {
		fmt.Fprintln(os.Stderr, "invalid args")
		os.Exit(1)
	}

	ver := args[0]
	v, err := semver.Parse(ver)
	if err != nil {
		fmt.Fprintln(os.Stderr, err.Error())
		os.Exit(2)
	}

	if len(v.Pre) > 0 {
		fmt.Println(v.Pre[0].String())
	}
}
