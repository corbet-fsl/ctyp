//! wasm-bindgen exports. ctypst's `Ctypst` runtime (compile, measure, export) is re-exported
//! unchanged; ctyp adds the correspondence and paper helpers, so a browser host needs no
//! second package for them.

use wasm_bindgen::prelude::*;

pub use ctypst::wasm::*;

use crate::{Paper, correspondence};

/// JSON `{ctyp, ctypst, cletter}` version triple.
#[wasm_bindgen(js_name = ctypVersions)]
#[must_use]
pub fn ctyp_versions() -> String {
    serde_json::json!({
        "ctyp": env!("CARGO_PKG_VERSION"),
        "ctypst": crate::CTYPST_VERSION,
        "cletter": crate::CLETTER_VERSION,
    })
    .to_string()
}

/// `cletter::normalize_locale_id`.
#[wasm_bindgen(js_name = normalizeLocaleId)]
#[must_use]
pub fn normalize_locale_id(input: &str) -> String {
    correspondence::normalize_locale_id(input)
}

/// `cletter::opening`.
#[wasm_bindgen]
#[must_use]
pub fn opening(locale: &str, name: Option<String>, override_opening: Option<String>) -> String {
    correspondence::opening(locale, name.as_deref(), override_opening.as_deref())
}

/// `cletter::subject`.
#[wasm_bindgen]
#[must_use]
pub fn subject(locale: &str, title: Option<String>, prefix_override: Option<String>) -> String {
    correspondence::subject(locale, title.as_deref(), prefix_override.as_deref())
}

/// `cletter::salutation`.
#[wasm_bindgen]
#[must_use]
pub fn salutation(locale: &str, name: &str) -> String {
    correspondence::salutation(locale, name)
}

/// `cletter::closing`.
#[wasm_bindgen]
#[must_use]
pub fn closing(locale: &str, override_closing: Option<String>) -> String {
    correspondence::closing(locale, override_closing.as_deref()).to_owned()
}

/// `cletter::apply_ortho`.
#[wasm_bindgen(js_name = applyOrtho)]
#[must_use]
pub fn apply_ortho(locale: &str, text: &str) -> String {
    correspondence::apply_ortho(locale, text)
}

/// Typst paper name for a locale (`us-letter` or `a4`).
#[wasm_bindgen(js_name = paperForLocale)]
#[must_use]
pub fn paper_for_locale(locale: &str) -> String {
    Paper::for_locale(locale).typst_name().to_owned()
}
