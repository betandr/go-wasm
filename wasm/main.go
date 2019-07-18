package main

import (
	"fmt"
	"syscall/js"
)

func main() {
	fmt.Println("Hello, WebAssembly console!")
	
	doc := js.Global().Get("document")
	body := doc.Call("getElementById", "message")
	body.Set("innerHTML", "Hello, WebAssembly!")
}
