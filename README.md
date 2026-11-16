# ctyp

<!-- ccid:security:begin (rendered by ccid render; do not edit by hand) -->
**Security and dependencies:** watched by Renovate (with OSV vulnerability alerts); an update is merged only when its tests pass. See the [security policy](SECURITY.md).
<!-- ccid:security:end -->

The document library over [ctypst](https://git.corbet.ch/corbet-fsl/ctypst) (the embedded Typst
engine, unchanged) and [cletter](https://git.corbet.ch/corbet-libre/cletter) (locale-correct
correspondence, with cnice, cdate and cink). One curated surface for papers, fonts, blocks,
correspondence, rendering, measurement and PDF; native Rust and WASM.

| Module | What |
|---|---|
| `paper` | `Paper` (A4, A5, US Letter, US Legal): Typst names, mm/pt sizes, locale default |
| `fonts` | the embedded OFL document fonts (`documents()`, `archivo()`) |
| `blocks` | the correspondence Typst module and the in-memory cletter/cnice/cdate/cink packages |
| `correspondence` | all of `cletter`: salutations, closings, openings, subjects, dates, orthography, signatures |
| `Typesetter` | one engine: compile, PDF, SVG, raster, label queries |
| `measure` | ctypst-measure-v1 text measurement (feature `measure`) |
| `pdf` | locale-identifier normalization of exported PDFs (feature `pdf-normalize`) |

The facade adds no wording and no rendering step: PDF and SVG are byte-identical to direct
`ctypst` use, correspondence output equals `cletter`'s. Tests prove it:

- `tests/render_parity.rs`: the CareerVector typst-parity fixtures, facade vs direct engine, plus
  committed digests (`CTYP_BLESS=1` regenerates them deliberately);
- `tests/measure_parity.rs`: the ctypst-measure-v1 vectors (from ctypst's `conformance` feature), facade vs direct client;
- `tests/correspondence.rs`: every cletter conformance vector (cletter's `conformance` feature) replayed through `ctyp`.

## WASM

`scripts/wasm.sh` builds the unpublished wasm-bindgen package (`target/wasm-pkg/{web,nodejs}`)
and prints a size report. It needs wasm-bindgen matching `Cargo.lock` and, optionally, wasm-opt.
The package exports ctypst's `Ctypst` runtime plus `ctypVersions`, `salutation`, `closing`,
`opening`, `subject`, `applyOrtho`, `normalizeLocaleId`, `paperForLocale`. Not published.

## Features

`pdf`, `pdf-normalize`, `svg`, `measure` (default), `raster`, `format`, `wasm`.

Licence: FSL-1.1-ALv2.
