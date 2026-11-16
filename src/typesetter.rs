use std::collections::BTreeMap;
use std::path::PathBuf;

use crate::blocks::with_correspondence_packages;
use crate::{
    CompileOutput, CompileReport, CompileRequest, Document, Engine, EngineBuilder, Limits, Result,
};

/// One engine that compiles and exports documents: the document fonts and the correspondence
/// packages are always registered; anything else (styles, assets, extra fonts) is added through
/// [`TypesetterBuilder`].
pub struct Typesetter {
    engine: Engine,
}

/// Builds a [`Typesetter`].
pub struct TypesetterBuilder {
    builder: EngineBuilder,
}

impl Typesetter {
    /// Start from the document fonts and the correspondence packages.
    pub fn builder() -> Result<TypesetterBuilder> {
        Ok(TypesetterBuilder {
            builder: with_correspondence_packages(
                Engine::builder().fonts(crate::fonts::documents()),
            )?,
        })
    }

    /// The underlying `ctypst` engine.
    #[must_use]
    pub const fn engine(&self) -> &Engine {
        &self.engine
    }

    /// Compile a request.
    pub fn compile(&self, request: CompileRequest) -> Result<CompileOutput> {
        Ok(self.engine.compile(request)?)
    }

    /// Compile a request and report the files it read.
    #[must_use]
    pub fn compile_tracked(&self, request: CompileRequest) -> CompileReport {
        self.engine.compile_tracked(request)
    }

    /// Compile a single source string with string inputs (`sys.inputs`).
    pub fn compile_source(
        &self,
        source: &str,
        inputs: BTreeMap<String, String>,
    ) -> Result<CompileOutput> {
        self.compile(
            CompileRequest::new("main.typ")
                .source_file("main.typ", source)
                .inputs(inputs),
        )
    }

    /// Export a PDF, byte-identical to `ctypst`'s own export.
    #[cfg(feature = "pdf")]
    pub fn pdf(&self, document: &Document, source_date_epoch: i64) -> Result<Vec<u8>> {
        Ok(self.engine.pdf(document, source_date_epoch)?)
    }

    /// Export a PDF with locale identifiers normalized (see [`crate::pdf::lowercase_locales`]).
    #[cfg(feature = "pdf-normalize")]
    pub fn pdf_normalized(&self, document: &Document, source_date_epoch: i64) -> Result<Vec<u8>> {
        crate::pdf::lowercase_locales(&self.pdf(document, source_date_epoch)?)
    }

    /// Export one page as SVG.
    #[cfg(feature = "svg")]
    pub fn svg_page(&self, document: &Document, page: usize) -> Result<String> {
        Ok(self.engine.svg_page(document, page)?)
    }

    /// Rasterize one page.
    #[cfg(feature = "raster")]
    pub fn rasterize(&self, document: &Document, page: usize) -> Result<crate::RasterPage> {
        Ok(self.engine.rasterize(document, page)?)
    }

    /// Values of every `#metadata(...) <label>` in the document.
    pub fn query_json(&self, document: &Document, label: &str) -> Result<Vec<serde_json::Value>> {
        Ok(crate::query_json(document, label)?)
    }
}

impl TypesetterBuilder {
    /// Filesystem root for relative reads.
    #[must_use]
    pub fn root(mut self, root: impl Into<PathBuf>) -> Self {
        self.builder = self.builder.root(root);
        self
    }

    /// Add font files.
    #[must_use]
    pub fn fonts<I, B>(mut self, fonts: I) -> Self
    where
        I: IntoIterator<Item = B>,
        B: AsRef<[u8]>,
    {
        self.builder = self.builder.fonts(fonts);
        self
    }

    /// Add a virtual source file.
    pub fn source(mut self, path: impl Into<String>, source: impl Into<String>) -> Result<Self> {
        self.builder = self.builder.source(path, source)?;
        Ok(self)
    }

    /// Add a virtual binary file.
    pub fn binary(mut self, path: impl Into<String>, binary: impl Into<Vec<u8>>) -> Result<Self> {
        self.builder = self.builder.binary(path, binary)?;
        Ok(self)
    }

    /// Register an additional in-memory Typst package.
    pub fn package<I, P, B>(mut self, spec: &str, files: I) -> Result<Self>
    where
        I: IntoIterator<Item = (P, B)>,
        P: Into<String>,
        B: Into<Vec<u8>>,
    {
        self.builder = self.builder.package(spec, files)?;
        Ok(self)
    }

    /// Set the resource limits.
    #[must_use]
    pub fn limits(mut self, limits: Limits) -> Self {
        self.builder = self.builder.limits(limits);
        self
    }

    /// Finish the engine.
    pub fn build(self) -> Result<Typesetter> {
        Ok(Typesetter {
            engine: self.builder.build()?,
        })
    }
}
