//! Every cletter conformance vector, replayed through `ctyp::correspondence` (the vectors and
//! runner ship in cletter's `conformance` feature; nothing is copied here).

#[test]
fn conformance_vectors() {
    let ran = ctyp::correspondence::conformance::run_all();
    assert!(ran >= 100, "only {ran} vectors ran");
}
