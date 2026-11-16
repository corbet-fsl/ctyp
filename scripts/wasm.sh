#!/bin/sh
# Build the unpublished WASM package into target/wasm-pkg and print a size report.
# wasm-bindgen must match the version in Cargo.lock; wasm-opt (binaryen) is used when present.
set -eu
cd "$(dirname "$0")/.."
RUSTFLAGS="${RUSTFLAGS:--C opt-level=z -C codegen-units=1}" cargo rustc --locked --release --target wasm32-unknown-unknown --no-default-features \
  --features wasm --crate-type cdylib -j "${JOBS:-8}"
wasm=target/wasm32-unknown-unknown/release/ctyp.wasm
out=target/wasm-pkg
rm -rf "$out"
mkdir -p "$out"
cp "$wasm" "$out/ctyp.raw.wasm"
src="$out/ctyp.raw.wasm"
if command -v wasm-opt >/dev/null 2>&1; then
  wasm-opt --enable-bulk-memory --enable-nontrapping-float-to-int -Oz "$wasm" -o "$out/ctyp.opt.wasm"
  src="$out/ctyp.opt.wasm"
fi
for kind in web nodejs; do
  wasm-bindgen --target "$kind" --out-dir "$out/$kind" "$src"
done
printf 'raw     %s bytes\n' "$(wc -c <"$out/ctyp.raw.wasm")"
[ -f "$out/ctyp.opt.wasm" ] && printf 'wasm-opt %s bytes\n' "$(wc -c <"$out/ctyp.opt.wasm")"
printf 'bindgen %s bytes\n' "$(wc -c <"$out/web/ctyp.wasm")"
printf 'gzip    %s bytes\n' "$(gzip -9c "$out/web/ctyp.wasm" | wc -c)"
