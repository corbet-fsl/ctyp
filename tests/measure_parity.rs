//! ctypst-measure-v1 vectors measured through `ctyp::measure` and through `ctypst` directly:
//! results and calibration must be identical.

use ctyp::measure::MeasureClient;

#[test]
fn measurement_matches_direct_ctypst() {
    let mut facade = MeasureClient::new(ctyp::fonts::documents()).unwrap();
    let mut direct = ctypst::measure::MeasureClient::new(ctypst::fonts::documents()).unwrap();
    let mut measured = 0;
    for vector in ctypst::conformance::vectors() {
        let (name, format, items) = (vector.name, vector.format, vector.items);
        let a = facade.measure_all(&format, &items).unwrap();
        let b = direct.measure_all(&format, &items).unwrap();
        assert_eq!(a, b, "{name}");
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
