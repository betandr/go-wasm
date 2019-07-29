.PHONY: build
build: clean
	GOOS=js GOARCH=wasm go build -o ./html/main.wasm ./wasm/main.go
	cp $$(go env GOROOT)/misc/wasm/wasm_exec.js ./html/wasm_exec.js

.PHONY: serve
serve:
	go run .

clean:
	rm -f ./html/*.wasm
	rm -f ./html/wasm_exec.js