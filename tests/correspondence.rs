//! Every cletter conformance vector, replayed through `ctyp::correspondence`.

use ctyp::correspondence::*;

fn run_vector(file: &std::path::Path, vector: &serde_json::Value) {
    let name = vector["name"].as_str().unwrap_or("<unnamed>");
    let context = format!("{} :: {name}", file.display());
    let actual: serde_json::Value = match vector["fn"].as_str().unwrap_or("") {
        "normalize_locale_id" => normalize_locale_id(vector["input"].as_str().unwrap_or("")).into(),
        "normalize_language" => normalize_language(vector["input"].as_str().unwrap_or("")).into(),
        "country_from_location" => {
            country_from_location(vector["input"].as_str().unwrap_or("")).into()
        }
        "orthography_replacements" => {
            serde_json::to_value(orthography_replacements(vector["locale"].as_str().unwrap()))
                .unwrap()
        }
        "orthography_issues" => serde_json::to_value(orthography_issues(
            vector["locale"].as_str().unwrap(),
            vector["text"].as_str().unwrap(),
        ))
        .unwrap(),
        "resolve_locale" => {
            let language = vector.get("language").and_then(serde_json::Value::as_str);
            let location = vector.get("location").and_then(serde_json::Value::as_str);
            serde_json::Value::String(resolve_locale(language, location))
        }
        "opening" => {
            let locale = vector["locale"].as_str().expect("vector needs locale");
            let who = vector.get("person").and_then(serde_json::Value::as_str);
            let override_opening = vector.get("override").and_then(serde_json::Value::as_str);
            serde_json::Value::String(opening(locale, who, override_opening))
        }
        "subject" => {
            let locale = vector["locale"].as_str().expect("vector needs locale");
            let title = vector.get("title").and_then(serde_json::Value::as_str);
            let prefix = vector
                .get("prefix_override")
                .and_then(serde_json::Value::as_str);
            serde_json::Value::String(subject(locale, title, prefix))
        }
        "salutation" => {
            let locale = vector["locale"].as_str().expect("vector needs locale");
            let who = vector
                .get("person")
                .and_then(serde_json::Value::as_str)
                .unwrap_or("");
            serde_json::Value::String(salutation(locale, who))
        }
        "apply_ortho" => {
            let locale = vector["locale"].as_str().expect("vector needs locale");
            let text = vector["text"].as_str().unwrap_or("");
            serde_json::Value::String(apply_ortho(locale, text))
        }
        "warnings" => {
            let location = vector["location"].as_str().expect("vector needs location");
            let locale = vector["locale"].as_str().expect("vector needs locale");
            let who = vector
                .get("person")
                .and_then(serde_json::Value::as_str)
                .unwrap_or("");
            serde_json::Value::Array(
                warnings(location, locale, who)
                    .iter()
                    .map(|warning| serde_json::Value::String(warning.clone()))
                    .collect(),
            )
        }
        "long_date" | "medium_date" | "short_date" => {
            let locale = vector["locale"].as_str().expect("vector needs locale");
            let year = i32::try_from(vector["year"].as_i64().expect("vector needs year"))
                .expect("vector year fits i32");
            let month = u32::try_from(vector["month"].as_u64().expect("vector needs month"))
                .expect("vector month fits u32");
            let day = u32::try_from(
                vector
                    .get("day")
                    .and_then(serde_json::Value::as_u64)
                    .unwrap_or(1),
            )
            .expect("vector day fits u32");
            match vector["fn"].as_str().unwrap_or("") {
                "long_date" => long_date(locale, year, month, day).into(),
                "medium_date" => medium_date(locale, year, month, day).into(),
                _ => short_date(locale, year, month, day).into(),
            }
        }
        "month_year" => {
            let locale = vector["locale"].as_str().expect("vector needs locale");
            let year = i32::try_from(vector["year"].as_i64().expect("vector needs year"))
                .expect("vector year fits i32");
            let month = u32::try_from(vector["month"].as_u64().expect("vector needs month"))
                .expect("vector month fits u32");
            month_year(locale, year, month).into()
        }
        other => panic!("{context}: unknown fn {other:?}"),
    };
    let expected = vector
        .get("expected")
        .cloned()
        .unwrap_or(serde_json::Value::Null);
    assert_eq!(actual, expected, "{context}");
}

#[test]
fn conformance_vectors() {
    let dir = std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/vectors");
    let mut files: Vec<_> = std::fs::read_dir(&dir)
        .unwrap()
        .map(|e| e.unwrap().path())
        .collect();
    files.sort();
    let mut count = 0;
    for file in &files {
        let raw = std::fs::read_to_string(file).unwrap();
        let vectors: Vec<serde_json::Value> = serde_json::from_str(&raw).unwrap();
        for vector in &vectors {
            run_vector(file, vector);
            count += 1;
        }
    }
    assert_eq!(
        count, 108,
        "the vector count changed; update cletter parity deliberately"
    );
}
