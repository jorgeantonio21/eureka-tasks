# Demo code for (building) and using Eureka to prove records

This demo builds on and extends the Streaming fast getting started demo: https://substreams.streamingfast.io/getting-started/quickstart

## Connect to a firehose instance (for now hosted by Streaming Fast)

copy your `STREAMINGFAST_KEY` into a `.env` file. (You can get an API key on https://app.streamingfast.io/)

then run `source ./firehouse_token.sh` to get `SUBSTREAMS_API_TOKEN` set in your local shell.
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

then run
```
substreams run -e mainnet.eth.streamingfast.io:443 substreams.yaml map_block --start-block 10000001 --stop-block +1
```