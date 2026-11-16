//! Render parity: the `CareerVector` typst-parity fixtures compiled through `ctyp::Typesetter`
//! and through a direct `ctypst` engine give byte-identical PDF and SVG, and both match the
//! committed digests in `tests/fixtures/render-digests.txt` (guards a ctypst bump).
//!
//! Regenerate the digests deliberately with `CTYP_BLESS=1 cargo test --test render_parity`.

use std::collections::BTreeMap;
use std::fmt::Write as _;
use std::path::PathBuf;

use ctyp::{CompileRequest, Engine, PageConstraint, Typesetter};

fn dir() -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR")).join("tests/fixtures")
}

fn fixtures() -> Vec<(String, String)> {
    let mut names: Vec<_> = std::fs::read_dir(dir().join("typst-parity"))
        .unwrap()
        .map(|e| e.unwrap().path())
        .filter(|p| p.extension().is_some_and(|e| e == "typ"))
        .collect();
    names.sort();
    names
        .into_iter()
        .map(|p| {
            (
                p.file_stem().unwrap().to_string_lossy().into_owned(),
                std::fs::read_to_string(&p).unwrap(),
            )
        })
        .collect()
}

/// FNV-1a 64: a stable, dependency-free digest for committed goldens.
fn digest(bytes: &[u8]) -> String {
    let mut hash = 0xcbf2_9ce4_8422_2325_u64;
    for byte in bytes {
        hash ^= u64::from(*byte);
        hash = hash.wrapping_mul(0x0100_0000_01b3);
    }
    format!("{hash:016x}-{}", bytes.len())
}

#[test]
fn fixtures_render_identically_to_direct_ctypst() {
    let direct = Engine::builder()
        .fonts(ctypst::fonts::documents())
        .build()
        .unwrap();
    let facade = Typesetter::builder().unwrap().build().unwrap();
    let mut digests = BTreeMap::new();
    for (name, source) in fixtures() {
        let request = || {
            CompileRequest::new("main.typ")
                .source_file("main.typ", source.clone())
                .pages(PageConstraint::Any)
        };
        let a = direct.compile(request()).unwrap();
        let b = facade.compile(request()).unwrap();
        assert_eq!(a.warnings, b.warnings, "{name}: warnings");
        let pdf_a = direct.pdf(&a.document, 0).unwrap();
        let pdf_b = facade.pdf(&b.document, 0).unwrap();
        assert_eq!(pdf_a, pdf_b, "{name}: PDF");
        let pages = a.document.pages().len();
        assert_eq!(pages, b.document.pages().len(), "{name}: pages");
        let mut svg = String::new();
        for page in 0..pages {
            let s_a = direct.svg_page(&a.document, page).unwrap();
            let s_b = facade.svg_page(&b.document, page).unwrap();
            assert_eq!(s_a, s_b, "{name}: SVG page {page}");
            svg.push_str(&s_a);
        }
        digests.insert(format!("{name}.pdf"), digest(&pdf_a));
        digests.insert(format!("{name}.svg"), digest(svg.as_bytes()));
    }
    let mut rendered = String::new();
    for (k, v) in &digests {
        writeln!(rendered, "{k} {v}").unwrap();
    }
    let golden = dir().join("render-digests.txt");
    if std::env::var_os("CTYP_BLESS").is_some() {
        std::fs::write(&golden, &rendered).unwrap();
    }
    assert_eq!(
        rendered,
        std::fs::read_to_string(&golden).unwrap(),
        "render digests changed"
    );
}

#[test]
fn normalized_pdf_keeps_content_for_lowercase_locales() {
    let facade = Typesetter::builder().unwrap().build().unwrap();
    let out = facade
        .compile_source(
            "#set text(lang: \"en\", region: \"CH\")\nHello",
            BTreeMap::new(),
        )
        .unwrap();
    let raw = facade.pdf(&out.document, 0).unwrap();
    let normalized = facade.pdf_normalized(&out.document, 0).unwrap();
    assert!(normalized.starts_with(b"%PDF"));
    assert_ne!(raw.len(), 0);
    // Normalizing an already-normalized PDF changes nothing.
    assert_eq!(
        normalized,
        ctyp::pdf::lowercase_locales(&normalized).unwrap()
    );
}

#[test]
fn correspondence_package_compiles_in_process() {
    let facade = Typesetter::builder().unwrap().build().unwrap();
    let source = format!(
        "{}\n#metadata(salutation(\"en-ch\", \"Ms Smith\")) <probe>\n",
        ctyp::blocks::correspondence_module()
    );
    let out = facade.compile_source(&source, BTreeMap::new()).unwrap();
    let probe = facade.query_json(&out.document, "probe").unwrap();
    assert_eq!(
        probe,
        vec![serde_json::json!(ctyp::correspondence::salutation(
            "en-ch", "Ms Smith"
        ))]
    );
}
