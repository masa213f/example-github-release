package main

import (
	"bytes"
	"testing"
)

func TestPrintVersion(t *testing.T) {
	testcase := []struct {
		input    string
		expected string
	}{
		{
			input:    "1.2.3",
			expected: "1.2.3\n",
		},
		{
			input:    "1.2.3-rc.0",
			expected: "1.2.3-rc.0\n",
		},
	}

	for _, tc := range testcase {
		t.Run(tc.input, func(t *testing.T) {
			buf := &bytes.Buffer{}
			printVersion(buf, tc.input)
			actual := buf.String()
			if tc.expected != actual {
				t.Errorf("expected: %s, actual: %s", tc.expected, actual)
			}
		})
	}
}
