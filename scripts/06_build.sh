#!/bin/bash

echo "[INFO] Build"
cargo build

echo "[INFO] Run fmt"
cargo fmt --all
cargo fmt --all -- --check

echo "[INFO] Run clippy"
cargo clippy --all-features --all-targets -- -D warnings

echo "[INFO] Run tests"
cargo test --locked --all-features --verbose
