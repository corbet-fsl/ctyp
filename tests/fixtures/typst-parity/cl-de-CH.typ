#set page(paper: "a4", margin: (top: 12mm, bottom: 12mm, left: 15mm, right: 15mm))
#set text(font: "Archivo", size: 10.5pt, fill: black, lang: "de", top-edge: "cap-height", bottom-edge: "baseline")
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
  Ich bewerbe mich um die Position als \[Rolle\] bei \[Unternehmen\]. Mein Hintergrund verbindet quantitative Analyse mit operativer Erfahrung in Infrastruktur-Investing, Unternehmensberatung und KI — eine bereichsübergreifende Perspektive für Aufgaben, die sowohl analytische Tiefe als auch Stakeholder-Management erfordern.
]

#v(13.125pt)
#block(breakable: false)[
  #set par(justify: true)
  Bei Cenvion habe ich 7+ BESS-Assets über IRR, NPV und DSCR modelliert und bankfähige Refinanzierungspakete geliefert, die institutionellen Standards entsprachen. Parallel habe ich die Reporting-Pipeline von Betriebsdaten bis zu den vierteljährlichen Investorenberichten automatisiert und dabei Performance-Gaps sowie Optimierungshebel sichtbar gemacht, die direkt in Portfolioentscheidungen einflossen. Zuvor bei Swisscom habe ich Lieferantenverhandlungen im Umfang von über CHF 10 Mio. für zukunftsfähige Infrastrukturprojekte geführt, SteerCo-Entscheidungen vorbereitet und über CHF 100'000 an Einsparpotenzialen identifiziert. Diese Kombination aus Modellierungstiefe und Kommunikation auf Führungsebene prägt meinen beruflichen Ansatz.
]

#v(13.125pt)
#block(breakable: false)[
  #set par(justify: true)
  Dieses Muster — komplexe Daten in entscheidungsrelevante Grundlagen zu übersetzen — zieht sich durch meine gesamte Laufbahn. Bei Airbus habe ich 20 Jahre Wartungsdaten über 500+ Flugzeuge in Risiko- und Kostensignale überführt und damit ein siebenstelliges Verbesserungsprogramm angestossen. Bei Covendit habe ich DCF- und Multiples-Modelle für M&A-Transaktionen gebaut und bereits vor ChatGPT KI-gestütztes Longlisting eingeführt, das die Recherchezeit um 80% reduzierte. Der rote Faden zwischen Physik, Finanzen und Technologie ist die Fähigkeit, im Rauschen das Signal zu finden — und es entscheidungsreif zu kommunizieren.
]

#v(13.125pt)
#block(breakable: false)[
  #block(fill: rgb("#f8fafc"), stroke: (left: 2.5pt + rgb("#1e3a5f")), inset: 8pt, radius: 2pt, width: 100%)[
  #cv-h[Infrastruktur & Energie]
  #v(7.35pt)
  #cv-b[BESS-Projektfinanzierung, IRR/NPV/DSCR-Modellierung, bankfähige Refinanzierung]
  #v(10.5pt)
  #cv-h[Quantitativ]
  #v(7.35pt)
  #cv-b[MSc Physik (1,0), Finanzmodellierung (DCF, IRR, NPV), Szenarioanalyse]
  #v(10.5pt)
  #cv-h[Führungskommunikation]
  #v(7.35pt)
  #cv-b[SteerCo-Vorbereitung (Swisscom), GL-Entscheidungsvorlagen, bereichsübergreifend]
  #v(10.5pt)
  #cv-h[KI & Risiko]
  #v(7.35pt)
  #cv-b[KI-Risikoanalyse (Airbus), automatisierte Pipelines, regulatorische KI-Governance]
  #v(10.5pt)
  #cv-h[Unternehmertum]
  #v(7.35pt)
  #cv-b[Beratungspraxis mitgegründet; sechsstelliger Umsatz in 4 Ländern aufgebaut]
  ]
]

#v(13.125pt)
#block(breakable: false)[
  #set par(justify: true)
  Diese Kombination aus analytischer Präzision und bereichsübergreifender Erfahrung ermöglicht mir, über das Standardprofil eines Analysten hinauszugehen. Wo andere isoliert modellieren, verbinde ich finanzielle Ergebnisse mit technischen und operativen Realitäten — sei es bei der Früherkennung von Degradationsrisiken in Energieanlagen, der Quantifizierung von Cloud-Wirtschaftlichkeit für Infrastrukturentscheide oder der Brücke zwischen Data Science und Führungskommunikation. Für Ihr Team bedeutet das: Due Diligence, die erfasst, was reine Finanzanalyse übersieht.
]

#v(13.125pt)
#block(breakable: false)[
  #set par(justify: true)
  \[Unternehmen\] überzeugt durch den Fokus auf \[strategischer Bereich\]. Die Verbindung von \[Aspekt A\] und \[Aspekt B\] entspricht meiner Überzeugung, dass die besten Infrastrukturinvestments sowohl quantitative Disziplin als auch tiefes technisches Verständnis erfordern. Besonders angesprochen hat mich \[konkretes Projekt, Initiative oder Wert\] — es deckt sich mit meiner eigenen Erfahrung im Aufbau analytischer Systeme, die reale operative Entscheidungen vorantreiben.
]

#v(13.125pt)
#block(breakable: false)[
  #set par(justify: true)
  Ich freue mich auf die Gelegenheit, in einem persönlichen Gespräch zu erläutern, wie ich zu Ihrem Team beitragen kann. Für Rückfragen stehe ich jederzeit zur Verfügung.
]
