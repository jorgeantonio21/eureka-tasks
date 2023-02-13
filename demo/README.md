# Demo code for (building) and using Eureka to prove records

This demo builds on and extends the Streaming fast getting started demo: https://substreams.streamingfast.io/getting-started/quickstart

## Getting started

To generate protobuf from `.proto` file, run
```
    substreams protogen substreams.yaml  --exclude-paths="sf/substreams,google"
```
and create a `mod.rs` file to reference the generate protobuf code

Create a handler in `src/lib.rs` and compile for the wasm32 target
```
rustup target add wasm32-unknown-unknown
cargo build --release --target wasm32-unknown-unknown
```