//! ctypst-measure-v1 vectors measured through `ctyp::measure` and through `ctypst` directly:
//! results and calibration must be identical.

use ctyp::measure::{MeasureClient, MeasureFormat, MeasureItem, Weight};

fn requests() -> serde_json::Value {
    let path =
        std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("tests/fixtures/requests.json");
    serde_json::from_str(&std::fs::read_to_string(path).unwrap()).unwrap()
}

#[test]
fn measurement_matches_direct_ctypst() {
    let mut facade = MeasureClient::new(ctyp::fonts::documents()).unwrap();
    let mut direct = ctypst::measure::MeasureClient::new(ctypst::fonts::documents()).unwrap();
    let requests = requests();
    let mut measured = 0;
    for entry in requests["requests"].as_array().unwrap() {
        let request = &entry["request"];
        let f = &request["format"];
        let format = MeasureFormat {
            font: f["font"].as_str().unwrap().to_owned(),
            base_font_size: f["baseFontSize"].as_f64().unwrap(),
            entry_heading_size: f["entryHeadingSize"].as_f64().unwrap(),
            leading_value: f["leadingEm"].as_f64().unwrap(),
            leading_relative: true,
            margin_left: f["marginLeft"].as_f64().unwrap(),
            margin_right: f["marginRight"].as_f64().unwrap(),
            page_size: f["pageSize"].as_str().unwrap().to_owned(),
        };
        let items: Vec<MeasureItem> = request["items"]
            .as_array()
            .unwrap()
            .iter()
            .map(|item| MeasureItem {
                id: item["id"].as_str().unwrap().to_owned(),
                text: item["text"].as_str().unwrap().to_owned(),
                font_size: item["fontSize"].as_f64().unwrap(),
                weight: if item["weight"] == "bold" {
                    Weight::Bold
                } else {
                    Weight::Regular
                },
                usable_width_pt: item["usableWidthPt"].as_f64().unwrap(),
            })
            .collect();
        let a = facade.measure_all(&format, &items).unwrap();
        let b = direct.measure_all(&format, &items).unwrap();
        assert_eq!(a, b, "{}", entry["name"]);
        assert_eq!(facade.calibration(), direct.calibration());
        measured += items.len();
    }
    assert!(measured > 0);
}

#[test]
fn budget_helpers_are_ctypsts() {
    assert_eq!(
        ctyp::measure::char_budget("abc", 30.0, 300.0),
        ctypst::measure::char_budget("abc", 30.0, 300.0)
    );
    assert_eq!(
        ctyp::measure::leading_em(0.66, true, 9.5).to_bits(),
        ctypst::measure::leading_em(0.66, true, 9.5).to_bits()
    );
}
