package main

import "fmt"

func Greetings() string {
	// return "Hello_Hello" // テスト失敗  _
	return "Hello" // 成功
}

func main() {
	fmt.Println(Greetings())
}
