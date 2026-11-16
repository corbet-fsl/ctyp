#set page(paper: "a4", margin: (top: 12mm, bottom: 12mm, left: 15mm, right: 15mm))
#set text(font: "Archivo", size: 10.5pt, fill: black, lang: "en", top-edge: "cap-height", bottom-edge: "baseline")
#set par(leading: 0.7em, justify: false, spacing: 0pt)
#set block(above: 0pt, below: 0pt)

#show link: it => text(fill: rgb("#1e3a5f"), it)

#let cv-bullet() = box(width: 10.5pt, height: 7.35pt, align(horizon, align(center, polygon(fill: rgb("#000000"), (0pt, 0pt), (4.41pt, 2.75625pt), (0pt, 5.5125pt)))))

// Entry heading (bold). Override size: #cv-h(size: 14pt)[...]
#let cv-h(size: 11pt, t) = { text(size: size, weight: "bold", t) }
#let cv-hu(size: 11pt, t) = { set strong(delta: -300); text(size: size, weight: "bold", t) }
// Entry subheading. Override size: #cv-s(size: 9pt)[...]
#let cv-s(size: 10pt, t) = text(size: size, t)
// Bullet row. Override indent/gutter: #cv-b(indent: 12pt)[...]
#let cv-b(indent: 10.5pt, gutter: 0pt, t) = grid(columns: (indent, 1fr), gutter: gutter, cv-bullet(), t)
// Sub-bullet row (indented)
#let cv-sb(indent: 10.5pt, gutter: 0pt, t) = pad(left: indent, grid(columns: (indent, 1fr), gutter: gutter, cv-bullet(), t))


#v(13.125pt)
#block(breakable: false)[
  #set par(justify: true)
  I am applying for the \[Role\] position at \[Company\]. My background combines quantitative analysis with operational experience across infrastructure investing, management consulting, and AI — a cross-domain perspective built for roles that require both analytical rigor and stakeholder management.
]

#v(13.125pt)
#block(breakable: false)[
  #set par(justify: true)
  At Cenvion, I modeled 7+ BESS assets across IRR, NPV, and DSCR metrics, delivering bank-ready refinancing packages that met institutional standards. I automated the reporting pipeline from operations data to quarterly investor packs, surfacing performance gaps and optimization levers that directly informed portfolio decisions. Previously at Swisscom, I drove supplier negotiations exceeding CHF 10M for next-generation infrastructure, prepared SteerCo decisions, and identified over CHF 100K in potential savings. This combination of financial modeling depth and executive-level communication defines my professional approach.
]

#v(13.125pt)
#block(breakable: false)[
  #set par(justify: true)
  This pattern of translating complex data into actionable decisions runs through my entire career. At Airbus, I converted 20 years of aircraft maintenance time-series across 500+ aircraft into risk and cost signals, triggering a seven-figure improvement program. At Covendit, I built DCF and multiples models for M&A deals and pioneered AI-assisted longlisting before ChatGPT existed, cutting research time by 80%. The thread connecting physics, finance, and technology is the ability to find signal in noise — and communicate it to decision-makers.
]

#v(13.125pt)
#block(breakable: false)[
  #block(fill: rgb("#f8fafc"), stroke: (left: 2.5pt + rgb("#1e3a5f")), inset: 8pt, radius: 2pt, width: 100%)[
  #cv-h[Infrastructure & Energy]
  #v(7.35pt)
  #cv-b[BESS project finance, IRR/NPV/DSCR modeling, bank-ready refinancing]
  #v(10.5pt)
  #cv-h[Quantitative]
  #v(7.35pt)
  #cv-b[MSc Physics (1.0), financial modeling (DCF, IRR, NPV), scenario analysis]
  #v(10.5pt)
  #cv-h[Executive Communication]
  #v(7.35pt)
  #cv-b[SteerCo preparation (Swisscom), board-level decks, cross-functional alignment]
  #v(10.5pt)
  #cv-h[AI & Risk]
  #v(7.35pt)
  #cv-b[AI risk analysis (Airbus), automated pipelines, regulatory AI governance]
  #v(10.5pt)
  #cv-h[Entrepreneurship]
  #v(7.35pt)
  #cv-b[Co-founded consulting practice; mid six-figure revenue across 4 countries]
  ]
]

#v(13.125pt)
#block(breakable: false)[
  #set par(justify: true)
  This combination of quantitative rigor and cross-domain experience positions me to add value beyond the standard analyst profile. Where others model in isolation, I connect financial outcomes to technical and operational realities — whether that means identifying degradation risks in energy assets, quantifying cloud economics for infrastructure decisions, or bridging the gap between data science and executive communication. For your team, this translates into due diligence that catches what pure financial analysis misses.
]

#v(13.125pt)
#block(breakable: false)[
  #set par(justify: true)
  \[Company\] stands out through its focus on \[specific strategic area\]. The combination of \[aspect A\] and \[aspect B\] aligns with my conviction that the best infrastructure investments require both quantitative discipline and deep technical understanding. I am drawn to \[specific project, initiative, or value\] — it resonates with my own experience building analytical systems that drive real operational decisions.
]

#v(13.125pt)
#block(breakable: false)[
  #set par(justify: true)
  I look forward to discussing how I can contribute to your team. I am available for a conversation at your convenience.
]
