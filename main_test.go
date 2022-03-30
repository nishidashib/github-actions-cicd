package main

import (
	"testing"
)

func TestGreetings(t *testing.T) {
	want := "Hello"
	got := Greetings()
	if want != got {
		t.Errorf("got %q want %q", got, want)
	}
}
