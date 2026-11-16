//! Typst source blocks and packages a document engine registers.

use crate::{EngineBuilder, Error, Result};

/// Package-relative path conventionally used for the generated correspondence module.
pub const CORRESPONDENCE_MODULE: &str = "correspondence.typ";

/// Source of a correspondence module: a glob import of the linked cletter package. Typst exports
/// every binding of a module, imported ones included, so importers see the whole cletter
/// facade without naming a cletter version.
#[must_use]
pub fn correspondence_module() -> String {
    format!("#import \"{}\": *\n", cletter::typst::spec())
}

/// Register the Typst packages embedded in the linked `cletter` crate (cletter, cnice, cdate and
/// cink), served from memory.
pub fn with_correspondence_packages(builder: EngineBuilder) -> Result<EngineBuilder> {
    let mut builder = builder;
    for package in cletter::typst::packages() {
        builder = builder
            .package(&package.spec, package.files)
            .map_err(Error::from)?;
    }
    Ok(builder)
}
