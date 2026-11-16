/// A `ctyp` failure.
#[derive(Debug, thiserror::Error)]
pub enum Error {
    /// The `ctypst` engine failed (policy, compilation or export).
    #[error(transparent)]
    Engine(#[from] ctypst::Error),
    /// A PDF could not be parsed or rewritten.
    #[error("{0}")]
    Pdf(String),
}

/// `ctyp`'s result type.
pub type Result<T, E = Error> = std::result::Result<T, E>;
