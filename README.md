# Hello, WebAssembly!

A simple WebAssembly application which will display *Hello, WebAssembly!* in the browser by getting an element by its ID and setting the text value.

With Go installed, copy the JavaScript support file `wasm_exec.js` from your `GOROOT` with:

```
cp "$(go env GOROOT)/misc/wasm/wasm_exec.js" .
```

Cross-compile the `wasm/main.go` source to a WebAssembly:

```
GOOS=js GOARCH=wasm go build -o main.wasm wasm/main.go
```

Run the web server (`server.go`) which will serve the `index.html` file, load the `wasm_exec.js` support file, and load the `main.wasm` WebAssembly:

```
go run .
```
