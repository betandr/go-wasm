# Hello, WebAssembly!

A simple WebAssembly application which will display *Hello, WebAssembly!* in the browser by getting an element by its ID and setting the text value.

With Go installed, the `wasm_exec.js` file is obtained from your `GOROOT/misc/wasm/` directory. Run:

```
make build
```

...to cross-compile the `wasm/main.go` source to a WebAssembly.

Run the web server which will serve the `html/index.html` file, load the `wasm_exec.js` support file, and load the `main.wasm` WebAssembly:

```
make serve
```
