//! Paper sizes: Typst names and dimensions.

/// A paper size the document styles use.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum Paper {
    /// ISO A4, 210 x 297 mm (the CV and letter default).
    A4,
    /// ISO A5, 148 x 210 mm.
    A5,
    /// US Letter, 8.5 x 11 in.
    UsLetter,
    /// US Legal, 8.5 x 14 in.
    UsLegal,
}

impl Paper {
    /// Every paper size.
    pub const ALL: [Paper; 4] = [Paper::A4, Paper::A5, Paper::UsLetter, Paper::UsLegal];

    /// The name Typst's `#set page(paper: ...)` takes.
    #[must_use]
    pub const fn typst_name(self) -> &'static str {
        match self {
            Paper::A4 => "a4",
            Paper::A5 => "a5",
            Paper::UsLetter => "us-letter",
            Paper::UsLegal => "us-legal",
        }
    }

    /// Parse a Typst paper name (ASCII case-insensitive).
    #[must_use]
    pub fn from_typst_name(name: &str) -> Option<Self> {
        Self::ALL
            .into_iter()
            .find(|paper| paper.typst_name().eq_ignore_ascii_case(name))
    }

    /// Width and height in millimetres.
    #[must_use]
    pub const fn size_mm(self) -> (f64, f64) {
        match self {
            Paper::A4 => (210.0, 297.0),
            Paper::A5 => (148.0, 210.0),
            Paper::UsLetter => (215.9, 279.4),
            Paper::UsLegal => (215.9, 355.6),
        }
    }

    /// Width and height in PostScript points (1 pt = 1/72 in).
    #[must_use]
    pub fn size_pt(self) -> (f64, f64) {
        let (w, h) = self.size_mm();
        (w * 72.0 / 25.4, h * 72.0 / 25.4)
    }

    /// The paper a locale's region conventionally uses: US Letter for `us`, `ca`, `mx`; A4 else.
    #[must_use]
    pub fn for_locale(locale: &str) -> Self {
        let normalized = cletter::normalize_locale_id(locale);
        match normalized.rsplit('-').next() {
            Some("us" | "ca" | "mx") if normalized.contains('-') => Paper::UsLetter,
            _ => Paper::A4,
        }
    }
}

#[cfg(test)]
mod tests {
    use super::Paper;

    #[test]
    fn names_round_trip() {
        for paper in Paper::ALL {
            assert_eq!(Paper::from_typst_name(paper.typst_name()), Some(paper));
        }
        assert_eq!(Paper::from_typst_name("A4"), Some(Paper::A4));
        assert_eq!(Paper::from_typst_name("tabloid"), None);
    }

    #[test]
    fn a4_points() {
        let (w, h) = Paper::A4.size_pt();
        assert!((w - 595.276).abs() < 0.01 && (h - 841.89).abs() < 0.01);
    }

    #[test]
    fn locale_paper() {
        assert_eq!(Paper::for_locale("en-US"), Paper::UsLetter);
        assert_eq!(Paper::for_locale("de-ch"), Paper::A4);
        assert_eq!(Paper::for_locale("en"), Paper::A4);
    }
}
