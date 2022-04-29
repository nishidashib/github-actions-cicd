package main

import (
	"testing"
)

// tはポインタ変数で 型は *testing.Tポインタ型
func TestGreetings(t *testing.T) {
	want := "Hello"
	got := Greetings()
	if want != got {
		t.Errorf("got %q want %q", got, want)
	}
}
