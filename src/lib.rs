//! `ctyp`: the document library over [`ctypst`] and [`cletter`].
//!
//! `ctypst` stays the embedded Typst engine; `cletter` stays the locale-correct correspondence
//! family. `ctyp` is the one curated surface the `CareerVector` engine (and anything else that
//! makes documents) builds on:
//!
//! - [`paper`]: paper sizes with their Typst names and dimensions;
//! - [`fonts`]: the embedded document fonts;
//! - [`blocks`]: the Typst source blocks and packages a document engine registers;
//! - [`correspondence`]: salutations, closings, openings, subjects, dates, orthography, signature
//!   images (all of `cletter`, with cnice, cdate and cink);
//! - [`Typesetter`]: compile, export PDF/SVG/raster and query labels through one engine;
//! - [`measure`]: the ctypst-measure-v1 text measurement client (feature `measure`);
//! - [`pdf`]: PDF normalization (feature `pdf-normalize`).
//!
//! Nothing here changes what `ctypst` or `cletter` produce: the facade adds no wording and
//! no rendering step of its own, so output is byte-identical to calling them directly.

pub mod blocks;
pub mod correspondence;
mod error;
pub mod fonts;
pub mod paper;
#[cfg(feature = "pdf-normalize")]
mod pdf_normalize;
mod typesetter;

#[cfg(feature = "measure")]
pub mod measure;
#[cfg(feature = "pdf-normalize")]
pub mod pdf;
#[cfg(feature = "wasm")]
pub mod wasm;

#[cfg(feature = "raster")]
pub use ctypst::RasterPage;
#[cfg(feature = "format")]
pub use ctypst::format_source;
pub use ctypst::{
    CompileOutput, CompileReport, CompileRequest, DiagnosticsPolicy, Document, Engine,
    EngineBuilder, Limits, PageConstraint, query_json,
};

pub use error::{Error, Result};
pub use paper::Paper;
pub use typesetter::{Typesetter, TypesetterBuilder};

/// Version of `ctypst` this facade is built over.
pub const CTYPST_VERSION: &str = "0.3.5";
/// Version of `cletter` this facade is built over.
pub const CLETTER_VERSION: &str = cletter::typst::VERSION;
