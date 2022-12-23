

# Compile
tinygo  build -target ./target.json             \
        -scheduler=none\
        -gc=leaking\
        -no-debug\
        -panic trap -wasm-abi generic     \
        -size full\
        -o app.wasm app.go

# Optimize (optional)
wasm-opt -Os app.wasm -o app.wasm
wasm-strip app.wasm



# Convert to C header
xxd -i app.wasm > app.wasm.h
# Convert to WAT
wasm2wat --generate-names app.wasm -o app.wat

cp app.wasm.h ../../../app.wasm.h