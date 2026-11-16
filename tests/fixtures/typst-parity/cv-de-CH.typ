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
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Summary])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #set par(justify: true)
  Physiker und Psychologe (summa cum laude, vier Stipendien), Alumnus des Collège des Ingénieurs, mit Erfahrung in Corporate Finance (Infrastruktur, M&A), Unternehmensberatung, Cloud & KI und Verteidigungs-ML. Ich verbinde Finanzmodellierungstiefe mit produktionsreifer technischer Fähigkeit und baue KI-native Systeme, nicht nur Slide Decks darüber. Auf der Suche nach Rollen, in denen quantitative Strenge auf strategische Entscheidungen trifft: Investing (PE), KI-gestützte Plattformen oder jedes Umfeld, das analytisches Denken, effektive Führung und die Fähigkeit zu liefern belohnt.
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Erfahrung])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[CENVION]
  #v(6.3pt)
  #cv-s[Associate Intern | Infrastructure Investing Team · Jan 2026 – Mär 2026 · Wollerau (CH)]
  #v(7.35pt)
  #cv-b[Portfolio-Monitoring unterstützt: Covenant-Checks, KPI-Reviews und Underperformer-Workouts]
  #v(5.25pt)
  #cv-sb[_Umfang: 300+ KPIs portfolioweit_]
  #v(8.4pt)
  #cv-b[Reporting-Pipeline automatisiert (Betriebsdaten bis Investorenberichte); Optimierungshebel identifiziert]
  #v(5.25pt)
  #cv-sb[_Frequenz: wöchentlich Ops, quartalsweise Investor_]
  #v(8.4pt)
  #cv-b[7+ BESS-Assets modelliert (IRR/NPV/DSCR, Sensitivitäten); bankfähige Refinanzierungspakete an LPs]
  #v(5.25pt)
  #cv-sb[_Adressaten: LP-Investmentkomitees_]
  #v(10.5pt)
  #cv-h[Swisscom]
  #v(6.3pt)
  #cv-s[Executive Assistant | Consultant für mehrere Abteilungen · Jun 2024 – Mär 2025 · Bern + Zürich]
  #v(7.35pt)
  #cv-b[ngIaaS-Lieferantenverhandlungen (CHF 10 Mio.+); SteerCo-Entscheidungen, CHF 100k+ Einsparungen]
  #v(8.4pt)
  #cv-b[2× Rechendichte unter DC-Leistungslimits modelliert; Cloud-Ökonomie für Lieferantensteuerung beziffert]
  #v(8.4pt)
  #cv-b[Lieferantenverhandlungen im Bereich IT-/Cloud-Infrastruktur (CHF 10 Mio.+); Entscheidungsgrundlagen für SteerCo erstellt, CHF 100k+ Einsparungen]
  #v(8.4pt)
  #cv-b[Szenarien zur Erhöhung der Rechendichte unter DC-Leistungslimits modelliert; Cloud-Ökonomie für Lieferantensteuerung quantifiziert]
  #v(10.5pt)
  #cv-h[AIRBUS]
  #v(6.3pt)
  #cv-s[Risk & Compliance Analyst (KI-gestützt) | Masterarbeit · Jul 2023 – Mär 2024 · Ingolstadt]
  #v(7.35pt)
  #cv-b[20+ Jahre Wartungszeitreihen über 500+ Flugzeuge in ML-gestützte Risiko- und Kostensignale überführt]
  #v(8.4pt)
  #cv-b[EUR 1 Mio.+ Verbesserungsprogramm angestossen; EUR 100k+ Einsparungen via Workflow-Redesign]
  #v(8.4pt)
  #cv-b[Mehr als 20 Jahre Wartungsdaten von über 500 Flugzeugen mit ML ausgewertet, um Risiko- und Kostenmuster zu identifizieren]
  #v(8.4pt)
  #cv-b[Verbesserungsprogramm (EUR 1 Mio.+) initiiert; durch Workflow-Redesign Einsparungen von über EUR 100k erzielt]
  #v(10.5pt)
  #cv-h[COVENDIT]
  #v(6.3pt)
  #cv-s[Investment Banking Analyst | Werkstudent · Apr 2022 – Jun 2022 · Frankfurt]
  #v(7.35pt)
  #cv-b[DCF- und Multiples-Modelle erstellt, Teaser und IM für siebenstellige grenzüberschreitende M&A-Deals]
  #v(8.4pt)
  #cv-b[KI-gestütztes Longlisting vor ChatGPT eingeführt; Recherchezeit 80% reduziert, PE-Retainer gewonnen]
  #v(8.4pt)
  #cv-b[Unternehmensbewertungen (DCF, Multiples) und Transaktionsunterlagen für internationale M&A-Deals im siebenstelligen Bereich erstellt]
  #v(8.4pt)
  #cv-b[Vor ChatGPT KI-gestütztes Longlisting eingeführt; Recherchezeit um 80% reduziert, PE-Retainer gewonnen]
  #v(10.5pt)
  #cv-h[NEXGEN]
  #v(6.3pt)
  #cv-s[Junior Consultant | Werkstudent · Apr 2022 – Jun 2022 · Frankfurt]
  #v(7.35pt)
  #cv-b[BAIT- und MaRisk-Regulierung in umsetzbaren Cloud-Migrationsplan für Tier-1-Banking-IT übersetzt]
  #v(8.4pt)
  #cv-b[Kritische ETL-Engpässe diagnostiziert; 99% Verarbeitungszeitreduktion (24h auf 15 min) für Kundenpitch]
  #v(8.4pt)
  #cv-b[Bankaufsichtsrechtliche Vorgaben (BAIT, MaRisk) in konkreten Cloud-Migrationsplan für Grossbank-IT überführt]
  #v(8.4pt)
  #cv-b[Kritische ETL-Engpässe diagnostiziert; Verarbeitungszeit um 99% von 24h auf 15 min für Kundenpitch reduziert]
  #v(10.5pt)
  #cv-h[A Softer Space & Corbet Consulting]
  #v(6.3pt)
  #cv-s[Mitgründer | Head of Business Development · Jan 2018 – Jun 2023 · CH, DE, IS, UK]
  #v(7.35pt)
  #cv-b[Europäischen Kundenstamm in 4 Ländern aufgebaut; sechsstelliger Umsatz via Trusted-Advisor-Vertrieb]
  #v(8.4pt)
  #cv-b[Bereichsübergreifende Beratung in Führung, Cloud-Migration, Prozessoptimierung und DLT-Systemen]
  #v(8.4pt)
  #cv-b[Internationale Kundenbasis in vier europäischen Märkten aufgebaut; sechsstelligen Umsatz via Trusted-Advisor-Vertrieb]
  #v(8.4pt)
  #cv-b[Unternehmen bereichsübergreifend zu Führung, Cloud-Migration, Prozessoptimierung und DLT-Systemen beraten]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Hochschulbildung])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-hu[Stipendien: *Studienstiftung (Top 1%) | Sandvoss (Physik, MSc & BSc) | e-fellows*]
  #v(10.5pt)
  #cv-h[B.Sc. & M.Sc. Physik]
  #v(6.3pt)
  #cv-s[Goethe-Universität Frankfurt · 2022 – 2024 · Note: 1,0 (DE) | 6,0 (CH) | GPA 4.0 · Angewandte Physik]
  #v(7.35pt)
  #cv-b[Schwerpunkt: KI und ML (1,0), angewandte Elektronik (1,3), Biophysik (1,3), Chemie (1,0), IP & High-Tech-Startups]
  #v(8.4pt)
  #cv-b[Forschung: Nahinfrarotspektroskopie (Neurowissenschaften), Terahertz-Bildgebung (Elektronik), Beschleunigerphysik (LINAC)]
  #v(10.5pt)
  #cv-h[B.Sc. Psychologie]
  #v(6.3pt)
  #cv-s[Goethe-Universität Frankfurt · 2017 · Note: 1,6 (DE) | 5,6 (CH) | GPA 3.7 · Organisationspsychologie]
  #v(7.35pt)
  #cv-b[Schwerpunkt: Automatisierte quantitative Empathiebewertung, standardisierte AR/VR-Trainings, Organisationspsychologie]
  #v(8.4pt)
  #cv-b[Forschung: KI am FIAS (9 Monate Vollzeit); Marktforschung mit 50+ CEOs und 1.000+ Gespräche analysiert]
  #v(10.5pt)
  #cv-hu[Matura (Abitur): *1,0 (DE) | 6,0 (CH) · Bester Schüler; Mathe-Olympiade & Schülerakademie*]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Executive Education])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[MBA (vollfinanziert)]
  #v(6.3pt)
  #cv-s[CDI Paris – München – Turin · 2024 – 2025 · Notenschnitt: A (GPA 4.0) · Vollfinanziert]
  #v(7.35pt)
  #cv-b[Schwerpunkt: KI-Führung, GenAI-Governance (EU AI Act); Kapital- und Personalkompetenzen; Innovation]
  #v(8.4pt)
  #cv-b[Schwerpunkt: Führung im KI-Zeitalter, GenAI-Governance unter dem EU AI Act, Kapital- und Personalfragen sowie Innovation]
]

#pagebreak()

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Kompetenzen])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Finanzen]
  #v(7.35pt)
  #cv-b[Corporate Finance: Portfolio- und Kapitalallokationsanalyse; qualitative und quantitative Risikobewertung]
  #v(8.4pt)
  #cv-b[Finanzmodellierung: DCF, Multiples, Vergleichswerte; Szenario- und Sensitivitätsanalyse; EK und FK]
  #v(8.4pt)
  #cv-b[Transaktionen: Origination, Due Diligence und IMs; Strukturierung strategischer Wachstumsinvestitionen]
  #v(8.4pt)
  #cv-b[Veränderungsführung: Transformation unter Hochdruck; balanciert Disruption und operative Kontinuität]
  #v(10.5pt)
  #cv-h[Strategie]
  #v(7.35pt)
  #cv-b[Führungsmaterialien: Board- und Investmentdecks; Abwägungen und Empfehlungen für Steerings]
  #v(8.4pt)
  #cv-b[Strategische Planung: TOMs, Roadmaps, KPI/OKR; Dashboards für Portfolio-Kadenz und Umsetzung]
  #v(8.4pt)
  #cv-b[Stakeholder-Management: Funktionsübergreifende Abstimmung und Führungserwartungen; termingerecht]
  #v(8.4pt)
  #cv-b[Interkulturelle Agilität: BANI-Unsicherheit navigiert; fliessend an wechselnde Organisationskontexte]
  #v(10.5pt)
  #cv-h[Technologie & KI]
  #v(7.35pt)
  #cv-b[KI-Innovation: Python und Java (OOP); On-Premise-, Hybrid- und Cloud-KI-MVPs; Deployment at scale]
  #v(8.4pt)
  #cv-b[Cloud-Exzellenz: Anforderungsanalyse und Prozessdiagnostik; regulatorische Anforderungen in Lösungen]
  #v(8.4pt)
  #cv-b[Quantitativ und Risiko: Zeitreihen und stochastische Modelle; Optionspreisbildung, VaR, Monte Carlo]
  #v(8.4pt)
  #cv-b[Digitale Befähigung: KI-Kompetenz via Workshops, Best-Practice-Integration und praxisnahes Coaching]
  #v(10.5pt)
  #cv-h[Menschen & Führung]
  #v(7.35pt)
  #cv-b[Coaching und Mentoring: Empathie mit aktiver Befähigung verbunden; Workshops und Resilienzaufbau]
  #v(8.4pt)
  #cv-b[Events und Netzwerk: Funktionsübergreifende Beziehungen in Finanz und IT; Konferenzorganisation]
  #v(8.4pt)
  #cv-b[Thought Leadership: Whitepapers und Vorträge; Medienpräsenz in KI, Finanzen und Strategie im Aufbau]
  #v(10.5pt)
  #cv-h[Adaptiv]
  #v(7.35pt)
  #cv-b[Office Mastery: Microsoft 365 (Copilot, Excel, PowerPoint), Google Workspace, Jira, Confluence, CRM]
  #v(8.4pt)
  #cv-b[Krisenkommunikation: Geschult in Incident Response für IT- und organisatorische Veränderungsprozesse]
  #v(8.4pt)
  #cv-b[Rhetorik und Verhandlung: Workshops in Auftrittskompetenz, Performance Leadership, PR und Medienarbeit]
  #v(10.5pt)
  #cv-h[Forschung & Wissenschaft]
  #v(7.35pt)
  #cv-b[Experimentaldesign: Physik-Labormethodik, Hypothesentests, statistische Strenge (SPSS, R, Python)]
  #v(8.4pt)
  #cv-b[Data Engineering: ETL-Pipeline-Design, Datenbereinigung, Korrelationsanalyse, Messdatenbanken]
  #v(8.4pt)
  #cv-b[Wissenschaftliches Schreiben: Zwei Abschlussarbeiten auf Englisch, eine auf Deutsch; Peer-Review-Methodik]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Zertifizierungen])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Corporate Finance Institute]
  #v(7.35pt)
  #cv-b[Selbstfinanziertes CFI in Arbeit (BIDA, CBCA, CMSA, FMVA); weitere Nachweise je nach Rollenanforderung]
  #v(10.5pt)
  #cv-h[Analytics & Daten]
  #v(7.35pt)
  #cv-b[Fortgeschrittenes Excel (VBA), Executive Dashboards, PowerBI, Tableau, SQL; Zeitreihen und Szenarien]
  #v(10.5pt)
  #cv-h[KI & Automatisierung]
  #v(7.35pt)
  #cv-b[Python und Java (OOP); GenAI-Tooling (Claude Code, Copilot); n8n-Automatisierung, Reporting-Pipelines]
  #v(10.5pt)
  #cv-h[Kommunikation & Führung]
  #v(7.35pt)
  #cv-b[Workshops in Rhetorik, Verhandlung, Performance Leadership, PR und Krisenkommunikation für IT-Wandel]
]

#pagebreak()

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Engagement])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Mentoring & Lehre]
  #v(6.3pt)
  #cv-s[Goethe-Universität · 3 Jahre]
  #v(7.35pt)
  #cv-b[Mentoringprogramm für den gesamten Jahrgang mitentwickelt; als Statistik-Tutor (SPSS, R) 3 Jahre gewählt]
  #v(10.5pt)
  #cv-h[GREEN Finance Consulting]
  #v(6.3pt)
  #cv-s[Roland Berger x Big Girls Foundation | BDSU · 1 Jahr]
  #v(7.35pt)
  #cv-b[Stakeholder-Interviews geführt, Prozesse erfasst; skalierbare Stipendienabwicklung geliefert (10× Kapazität)]
  #v(10.5pt)
  #cv-h[AIESEC Incoming Global Talent]
  #v(6.3pt)
  #cv-s[AIESEC Frankfurt · 1 Jahr]
  #v(7.35pt)
  #cv-b[Incoming Global Talent mitbetreut; interkulturelles Onboarding koordiniert und Ansprache standardisiert]
  #v(10.5pt)
  #cv-h[Enactus Innovation Team]
  #v(6.3pt)
  #cv-s[Enactus Frankfurt e.V. · 1 Jahr]
  #v(7.35pt)
  #cv-b[Entrepreneurship-for-Impact-Initiativen aufgebaut; Ideen in umgesetzte Workstreams mit Medienecho]
  #v(10.5pt)
  #cv-h[Krisenunterstützung]
  #v(6.3pt)
  #cv-s[Freiwillig · 1 Jahr]
  #v(7.35pt)
  #cv-b[Krisenunterstützung an vorderster Front: Deeskalation und Schadensminderung; sichere Ergebnisse täglich]
  #v(10.5pt)
  #cv-h[Kinder-Hotline (Beratung)]
  #v(6.3pt)
  #cv-s[Digitale Plattform · 1 Jahr]
  #v(7.35pt)
  #cv-b[Digitale Beratung für Minderjährige zu Identität, Körperbild und Selbstzweifeln; Jugendpsychologie]
  #v(10.5pt)
  #cv-h[Suchtberatung & Schadensminderung]
  #v(6.3pt)
  #cv-s[Klinisch & ambulant]
  #v(7.35pt)
  #cv-b[In klinischen und ambulanten Einrichtungen zu Therapie, Rehabilitation und Prävention mitgearbeitet]
  #v(10.5pt)
  #cv-h[Swiss Python Summit & Web Zurich]
  #v(6.3pt)
  #cv-s[Organisator · seit 2025]
  #v(7.35pt)
  #cv-b[Technische Konferenzen mitorganisiert; AV-Betrieb, Sprecherkoordination, Community im DACH-Raum]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Netzwerke & Communities])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Consulting]
  #v(7.35pt)
  #cv-b[Bain Spark, BCG Emeralds; BDSU, AIESEC und Enactus Alumnus; WFI Consulting Cup Teilnehmer]
  #v(10.5pt)
  #cv-h[Corporate Finance]
  #v(7.35pt)
  #cv-b[SECA Young Member; aktiv in Schweizer PE-, VC- und Corp-Dev-Kreisen; CFA Society Switzerland geplant]
  #v(10.5pt)
  #cv-h[Tech]
  #v(7.35pt)
  #cv-b[CCC, LUG, DigiGes, digitalswitzerland; Swiss Python Summit und Web Zurich Organisator; Impact Hub]
  #v(10.5pt)
  #cv-h[Akademisch]
  #v(7.35pt)
  #cv-b[Studienstiftung des deutschen Volkes Alumnus; CDI (College des Ingenieurs) Alumnus; e-fellows Netzwerk]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Persönlicher Hintergrund])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Pflegender Angehöriger]
  #v(7.35pt)
  #cv-b[Pflegender Angehöriger seit der Jugend; organisiere aktuell Langzeitpflege-Unterbringung für meine Mutter]
  #v(10.5pt)
  #cv-h[Erstakademiker]
  #v(7.35pt)
  #cv-b[Erstakademiker: gesamte Karriere durch Leistung und gezielte Förderung aufgebaut, ohne Sicherheitsnetz]
  #v(10.5pt)
  #cv-h[Lebensretter]
  #v(7.35pt)
  #cv-b[In lebensbedrohlichen Situationen mehrfach direkt eingegriffen; medizinische Notfallmassnahmen geleitet]
  #v(10.5pt)
  #cv-h[Weltbürger]
  #v(7.35pt)
  #cv-b[Mit 20+ Menschen aus 10+ Ländern gelebt; aktiv in offenen Gastfreundschafts- und interkulturellen Foren]
]

#pagebreak()

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Projekte])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Incident Recovery & Cloud-Migration]
  #v(6.3pt)
  #cv-s[Solar-KMU · 2022]
  #v(7.35pt)
  #cv-b[Abgestürztes Kernsystem am ersten Tag wiederhergestellt; Felddienst und Vertrieb bis Ablösung gesichert]
  #v(8.4pt)
  #cv-b[Cloud-Migrationsoptionen bewertet (SaaS, Anbieter, Lizenzen); sechs- bis siebenstellige Fehlinvestition vermieden]
  #v(10.5pt)
  #cv-h[Digitaler Pivot zu hybridem Delivery]
  #v(6.3pt)
  #cv-s[Leadership Advisory Brand · 2022]
  #v(7.35pt)
  #cv-b[Digitale Delivery-Infrastruktur aufgebaut; On-Demand-Content als Alternative zu blockierten Seminaren]
  #v(8.4pt)
  #cv-b[Kundenpainpoints erfasst und Marketing-Funnel verbessert; Umsatz über hybrides Delivery diversifiziert]
  #v(10.5pt)
  #cv-h[Krypto-Infrastruktur-Beratung]
  #v(6.3pt)
  #cv-s[Mehrere Kunden · 2021]
  #v(7.35pt)
  #cv-b[Krypto-Pilot und Betriebsmodell dimensioniert und kalkuliert; Beschaffungs- und Betriebsrisiken gesteuert]
  #v(8.4pt)
  #cv-b[Überwachten, stabilen Mining-Betrieb termingerecht geliefert; Hashrate via Custom-Firmware optimiert]
  #v(10.5pt)
  #cv-h[Führungskräfte-Coaching Digitalisierung]
  #v(6.3pt)
  #cv-s[Frankfurt · 2022]
  #v(7.35pt)
  #cv-b[Performance-Leadership-Kurse für Online-Delivery überarbeitet; Inhalte bei Haufe Akademie platziert]
  #v(10.5pt)
  #cv-h[CareerVector (KI-Jobtracker)]
  #v(6.3pt)
  #cv-s[Eigenprojekt · seit 2025]
  #v(7.35pt)
  #cv-b[Full-Stack KI-nativer Jobtracker: Astro, React, Typst WASM, 13+ LLM-Anbieter, Cloudflare Edge]
  #v(10.5pt)
  #cv-h[MBI-Versuch indisches IT-Outsourcing]
  #v(6.3pt)
  #cv-s[2022]
  #v(7.35pt)
  #cv-b[Akquisitionsziel identifiziert; Due Diligence durchgeführt und MBI-Pitch für PE-Finanzierung strukturiert]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Nebenprojekte])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Personal Cloud Platform (apps.corbet.ch)]
  #v(6.3pt)
  #cv-s[seit 2024]
  #v(7.35pt)
  #cv-b[Digitale Souveränität: 30+ selbstgehostete Dienste, 100+ TB Speicher, lokale LLMs, IdP und agentische KI]
  #v(10.5pt)
  #cv-h[eCommerce-Betrieb (eBay-Wiederverkauf)]
  #v(6.3pt)
  #cv-s[2017 – 2025]
  #v(7.35pt)
  #cv-b[Fünfstelliger eBay-Betrieb: Listing, Tracking und Logistik via Mini-ERP automatisiert; Exit bei 80% Buchwert]
  #v(10.5pt)
  #cv-h[Hardware- & Software-Services (KMU/B2C)]
  #v(6.3pt)
  #cv-s[2009 – 2024]
  #v(7.35pt)
  #cv-b[Profitabler Diagnose-, Custom-Build- und Reparaturservice für KMU und B2C; Kontinuität trotz Umbrüchen]
  #v(10.5pt)
  #cv-h[Content-Strategie & Medien]
  #v(6.3pt)
  #cv-s[seit 2025]
  #v(7.35pt)
  #cv-b[Blog und Podcast in Aufbau zu KI, Finanzen und Strategie; AV-Produktion am Swiss Python Summit]
  #v(10.5pt)
  #cv-h[Investmentportfolio]
  #v(6.3pt)
  #cv-s[seit 2021]
  #v(7.35pt)
  #cv-b[Diversifiziertes Portfolio über Aktien, Alternatives und Early-Stage-VC; Value- und Momentum-Ansatz]
]
