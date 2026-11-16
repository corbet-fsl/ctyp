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
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Summary])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #set par(justify: true)
  Physicist and psychologist (summa cum laude, four scholarships), Collège des Ingénieurs alumnus, with experience spanning corporate finance (infrastructure, M&A), management consulting, cloud & AI, and defense ML. I combine financial modeling depth with production-grade technical ability building AI-native systems, not just slide decks about them. Seeking roles where quantitative rigor meets strategic decisions: Investing (PE), AI-enabled platforms, or any environment that rewards analytical thinking, effective leadership and the ability to ship.
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Experience])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[CENVION]
  #v(6.3pt)
  #cv-s[Associate Intern | Infrastructure Investing Team · Jan 2026 – Mar 2026 · Wollerau (CH)]
  #v(7.35pt)
  #cv-b[Supported portfolio monitoring: covenant checks, KPI reviews, and underperformer workouts]
  #v(5.25pt)
  #cv-sb[_Scope: 300+ KPIs across the portfolio_]
  #v(8.4pt)
  #cv-b[Automated ops-to-investor reporting pipeline; surfaced performance gaps driving quarterly LP decisions]
  #v(5.25pt)
  #cv-sb[_Frequency: weekly ops, quarterly investor_]
  #v(8.4pt)
  #cv-b[Modeled 7+ BESS assets (IRR/NPV/DSCR, sensitivities); delivered bank-ready refinancing packs to LPs]
  #v(5.25pt)
  #cv-sb[_Delivered to: LP investment committees_]
  #v(10.5pt)
  #cv-h[Swisscom]
  #v(6.3pt)
  #cv-s[Executive Assistant | Consultant to multiple departments · Jun 2024 – Mar 2025 · Bern + Zurich]
  #v(7.35pt)
  #cv-b[Drove ngIaaS supplier talks (CHF 10m+); prepared SteerCo decisions and surfaced CHF 100k+ savings]
  #v(8.4pt)
  #cv-b[Modeled 2x compute density under DC power limits; quantified licensing and cloud economics for vendors]
  #v(10.5pt)
  #cv-h[AIRBUS]
  #v(6.3pt)
  #cv-s[Risk & Compliance Analyst (AI enabled) | Master thesis · Jul 2023 – Mar 2024 · Ingolstadt]
  #v(7.35pt)
  #cv-b[Turned 20+ years of maintenance time-series across 500+ aircraft into ML-driven risk and cost signals]
  #v(8.4pt)
  #cv-b[Sparked EUR 1m+ improvement program; quantified EUR 100k+ annual savings via workflow redesign]
  #v(10.5pt)
  #cv-h[COVENDIT]
  #v(6.3pt)
  #cv-s[Investment Banking Analyst | working student · Apr 2022 – Jun 2022 · Frankfurt]
  #v(7.35pt)
  #cv-b[Built DCF and multiples models, authored teaser and IM for seven-figure cross-border M&A deal execution]
  #v(8.4pt)
  #cv-b[Pioneered AI-assisted target longlisting pre-ChatGPT; cut research time 80%, improved fit, won PE retainer]
  #v(10.5pt)
  #cv-h[NEXGEN]
  #v(6.3pt)
  #cv-s[Junior Consultant | working student · Apr 2022 – Jun 2022 · Frankfurt]
  #v(7.35pt)
  #cv-b[Converted BAIT and MaRisk regulation into an actionable cloud migration blueprint for Tier-1 banking IT]
  #v(8.4pt)
  #cv-b[Diagnosed critical ETL bottlenecks; validated 99% processing-time reduction (24h to 15 min) for client pitch]
  #v(10.5pt)
  #cv-h[A Softer Space & Corbet Consulting]
  #v(6.3pt)
  #cv-s[Co-Founder | Head of Business Development · Jan 2018 – Jun 2023 · CH, DE, IS, UK]
  #v(7.35pt)
  #cv-b[Built European client base across 4 countries; grew to mid six-figure revenue via trusted-advisor sales]
  #v(8.4pt)
  #cv-b[Led cross-domain consulting in leadership advisory, cloud migration, operational redesign and DLT systems]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[University Education])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-hu[Scholarships: *Studienstiftung (Top 1%) | Sandvoss (Physics, MSc & BSc) | e-fellows*]
  #v(10.5pt)
  #cv-h[B.Sc. & M.Sc. Physics]
  #v(6.3pt)
  #cv-s[Goethe University Frankfurt · 2022 – 2024 · Grade: 1.0 (DE) | 6.0 (CH) | GPA 4.0 · Applied Physics]
  #v(7.35pt)
  #cv-b[Specialization: AI and ML (1.0), applied electronics (1.3), biophysics (1.3), chemistry (1.0), IP & high-tech startups]
  #v(8.4pt)
  #cv-b[Research: Near-infrared spectroscopy (neuroscience), terahertz imaging (contributed electronics), accelerator physics (LINAC)]
  #v(10.5pt)
  #cv-h[B.Sc. Psychology]
  #v(6.3pt)
  #cv-s[Goethe University Frankfurt · 2017 · Grade: 1.6 (DE) | 5.6 (CH) | GPA 3.7 · Organizational Psychology]
  #v(7.35pt)
  #cv-b[Specialization: Automated quantitative empathy assessment, standardized AR/VR employee trainings, org psychology]
  #v(8.4pt)
  #cv-b[Research: AI at FIAS (9 months full-time); market research interviewing 50+ CEOs, 1,000+ calls analyzed]
  #v(10.5pt)
  #cv-hu[Matura (Abitur): *1.0 (DE) | 6.0 (CH) · Best grade, best student; math. olympiad & student academy*]
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
  #cv-h[MBA (fully financed)]
  #v(6.3pt)
  #cv-s[CDI Paris – Munich – Turin · 2024 – 2025 · Mean grade: A (GPA 4.0) · Fully funded]
  #v(7.35pt)
  #cv-b[Focus: AI leadership, GenAI governance (EU AI Act); capital and people skills; tech and innovation mgmt]
]

#pagebreak()

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Skills])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Finance]
  #v(7.35pt)
  #cv-b[Corporate Finance: Portfolio and capital allocation analysis; qualitative and quantitative risk assessment]
  #v(8.4pt)
  #cv-b[Financial Modelling: DCF, multiples, comps; scenario and sensitivity analysis; debt and equity decisions]
  #v(8.4pt)
  #cv-b[Transactions: Origination, due diligence and IMs; structuring strategic growth investments (Buy & Build)]
  #v(8.4pt)
  #cv-b[Leading Change: Drives transformation in high-pressure restructuring; balances disruption and continuity]
  #v(10.5pt)
  #cv-h[Strategy]
  #v(7.35pt)
  #cv-b[Executive Materials: Board and investment decks; options, trade-offs and recommendations for steerings]
  #v(8.4pt)
  #cv-b[Strategic Planning: TOMs, roadmaps, KPI/OKR frameworks; dashboards for portfolio cadence & execution]
  #v(8.4pt)
  #cv-b[Stakeholder Management: Aligns cross-functional teams and senior expectations; accountable delivery]
  #v(8.4pt)
  #cv-b[Cross-Cultural Agility: Navigates BANI-driven uncertainty; adapts fluidly across organizational contexts]
  #v(10.5pt)
  #cv-h[Technology & AI]
  #v(7.35pt)
  #cv-b[AI Innovation: Python and Java (OOP); builds on-premise, hybrid and cloud AI MVPs; deploys at scale]
  #v(8.4pt)
  #cv-b[Cloud Excellence: Requirements analysis and process diagnostics; translates regulatory needs to solutions]
  #v(8.4pt)
  #cv-b[Quantitative and Risk: Forecasting, time series and stochastic models; option pricing, VaR, Monte Carlo]
  #v(8.4pt)
  #cv-b[Digital Enablement: Builds AI literacy through hands-on workshops, best-practice integration and coaching]
  #v(10.5pt)
  #cv-h[People & Leadership]
  #v(7.35pt)
  #cv-b[Coaching and Mentoring: Combines empathy with active enablement; runs workshops and builds resilience]
  #v(8.4pt)
  #cv-b[Events and Networking: Builds cross-functional networks across finance and IT; organizes tech conferences]
  #v(8.4pt)
  #cv-b[Thought Leadership: Writes whitepapers and gives talks; building media presence in AI and strategy]
  #v(10.5pt)
  #cv-h[Adaptive]
  #v(7.35pt)
  #cv-b[Office Mastery: Microsoft 365 (Copilot, Excel, PowerPoint), Google Workspace, Jira, Confluence, CRM]
  #v(8.4pt)
  #cv-b[Crisis Communication: Trained in incident response comms for IT and organizational change situations]
  #v(8.4pt)
  #cv-b[Rhetoric and Negotiation: Workshops in public speaking, performance leadership and PR communication]
  #v(10.5pt)
  #cv-h[Research & Science]
  #v(7.35pt)
  #cv-b[Experimental Design: Physics lab methodology, hypothesis testing, statistical rigor (SPSS, R, Python)]
  #v(8.4pt)
  #cv-b[Data Engineering: ETL pipeline design, data cleaning, correlation analysis, measurement databases]
  #v(8.4pt)
  #cv-b[Academic Writing: Two theses in English, one in German; peer-reviewed methodology and publication]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Certifications])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Corporate Finance Institute]
  #v(7.35pt)
  #cv-b[Self-funded CFI in progress (BIDA, CBCA, CMSA, FMVA); additional credentials available per role needs]
  #v(10.5pt)
  #cv-h[Analytics & Data]
  #v(7.35pt)
  #cv-b[Advanced Excel (VBA), Executive Dashboards, PowerBI, Tableau, SQL; time series and scenario pipelines]
  #v(10.5pt)
  #cv-h[AI & Automation]
  #v(7.35pt)
  #cv-b[Python and Java (OOP); GenAI tooling (Claude Code, Copilot); n8n automation and reporting pipelines]
  #v(10.5pt)
  #cv-h[Communication & Leadership]
  #v(7.35pt)
  #cv-b[Workshops in rhetoric, negotiation, performance leadership, PR and crisis communications for IT change]
]

#pagebreak()

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Extracurricular])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Mentorship & Teaching]
  #v(6.3pt)
  #cv-s[Goethe University · 3 years]
  #v(7.35pt)
  #cv-b[Co-created mentoring program spanning undergrad cohort; elected independent statistics tutor (SPSS, R)]
  #v(10.5pt)
  #cv-h[GREEN Finance Consulting]
  #v(6.3pt)
  #cv-s[Roland Berger x Big Girls Foundation | BDSU · 1 year]
  #v(7.35pt)
  #cv-b[Ran stakeholder interviews, mapped processes; delivered scalable scholarship operations (10x capacity)]
  #v(10.5pt)
  #cv-h[AIESEC Incoming Global Talent]
  #v(6.3pt)
  #cv-s[AIESEC Frankfurt · 1 year]
  #v(7.35pt)
  #cv-b[Co-managed incoming global talent; coordinated cross-cultural onboarding and standardized outreach ops]
  #v(10.5pt)
  #cv-h[Enactus Innovation Team]
  #v(6.3pt)
  #cv-s[Enactus Frankfurt e.V. · 1 year]
  #v(7.35pt)
  #cv-b[Built entrepreneurship-for-impact initiatives; translated ideas into executed workstreams featured in media]
  #v(10.5pt)
  #cv-h[Frontline Crisis Support]
  #v(6.3pt)
  #cv-s[Volunteer · 1 year]
  #v(7.35pt)
  #cv-b[Frontline crisis support: de-escalation and harm reduction trained; guided people to safe outcomes daily]
  #v(10.5pt)
  #cv-h[Kids Hotline (Counselling)]
  #v(6.3pt)
  #cv-s[Digital Platform · 1 year]
  #v(7.35pt)
  #cv-b[Digital counselling for minors on identity, body image and self-doubt; trained in youth psychology protocols]
  #v(10.5pt)
  #cv-h[Addiction Support & Harm Reduction]
  #v(6.3pt)
  #cv-s[Clinical & Outreach]
  #v(7.35pt)
  #cv-b[Worked in clinical and outreach environments supporting therapy, rehabilitation and prevention education]
  #v(10.5pt)
  #cv-h[Swiss Python Summit & Web Zurich]
  #v(6.3pt)
  #cv-s[Organizer · since 2025]
  #v(7.35pt)
  #cv-b[Technical conferences co-organized; AV operations, speaker coordination, community across DACH]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Networks & Communities])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Consulting]
  #v(7.35pt)
  #cv-b[Bain Spark, BCG Emeralds; BDSU, AIESEC and Enactus alumnus; WFI Consulting Cup competitor]
  #v(10.5pt)
  #cv-h[Corporate Finance]
  #v(7.35pt)
  #cv-b[SECA Young Member; active in Swiss PE, VC and corporate development circles; CFA Society in planning]
  #v(10.5pt)
  #cv-h[Tech]
  #v(7.35pt)
  #cv-b[CCC, LUG, DigiGes, digitalswitzerland; Swiss Python Summit and Web Zurich organizer; Impact Hub active]
  #v(10.5pt)
  #cv-h[Academic]
  #v(7.35pt)
  #cv-b[Studienstiftung des deutschen Volkes alumnus; CDI (College des Ingenieurs) alumnus; e-fellows network]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Personal Background])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Caregiver]
  #v(7.35pt)
  #cv-b[Family caregiver since adolescence; currently organizing long-term care placement for my mother full-time]
  #v(10.5pt)
  #cv-h[First-Generation Academic]
  #v(7.35pt)
  #cv-b[First-generation academic: built entire career path through performance and selective opportunities alone]
  #v(10.5pt)
  #cv-h[Lifesaver]
  #v(7.35pt)
  #cv-b[Intervened directly in life-threatening situations on multiple occasions; coordinated emergency response]
  #v(10.5pt)
  #cv-h[Global Citizen]
  #v(7.35pt)
  #cv-b[Hosted and lived with 20+ people from 10+ countries; active in open-hospitality and cross-cultural forums]
]

#pagebreak()

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Projects])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Incident Recovery & Cloud Migration]
  #v(6.3pt)
  #cv-s[Solar SME · 2022]
  #v(7.35pt)
  #cv-b[Restored crashed core system on day one; kept multi-site field crews and sales operational until recovery]
  #v(8.4pt)
  #cv-b[Assessed cloud migration options (SaaS, vendors, licenses); prevented six-to-seven-figure misinvestment]
  #v(10.5pt)
  #cv-h[Digital Pivot to Hybrid Delivery]
  #v(6.3pt)
  #cv-s[Leadership Advisory Brand · 2022]
  #v(7.35pt)
  #cv-b[Built digital delivery infrastructure; co-led on-demand content launch as alternative to blocked seminars]
  #v(8.4pt)
  #cv-b[Mapped customer pain points and improved marketing funnel; diversified revenue via hybrid delivery model]
  #v(10.5pt)
  #cv-h[Crypto Infrastructure Advisory]
  #v(6.3pt)
  #cv-s[Multiple Clients · 2021]
  #v(7.35pt)
  #cv-b[Sized and costed crypto infrastructure pilot and operating model; managed procurement and operational risk]
  #v(8.4pt)
  #cv-b[Delivered monitored, stable mining operation on time and budget; optimized hash rates via custom firmware]
  #v(10.5pt)
  #cv-h[Leadership Coaching Digitalization]
  #v(6.3pt)
  #cv-s[Frankfurt · 2022]
  #v(7.35pt)
  #cv-b[Reworked Performance Leadership courses for online delivery; placed content in Haufe Akademie program]
  #v(10.5pt)
  #cv-h[CareerVector (AI Job Tracker)]
  #v(6.3pt)
  #cv-s[Personal Project · since 2025]
  #v(7.35pt)
  #cv-b[Built full-stack AI-native job tracker: Astro, React, Typst WASM, 13+ LLM providers, Cloudflare edge]
  #v(10.5pt)
  #cv-h[Indian IT Outsourcing MBI Attempt]
  #v(6.3pt)
  #cv-s[2022]
  #v(7.35pt)
  #cv-b[Identified distressed acquisition target; conducted due diligence and structured MBI pitch for PE backing]
]

#v(13.125pt)
#block(breakable: false)[
  #block(above: 0pt, below: 0pt)[
    #set par(spacing: 0pt)
    #text(size: 12pt, weight: "bold", upper[Side Ventures])
    #v(4.41pt)
    #line(length: 100%, stroke: 0.5pt + black)
  ]
  #v(7.35pt)
  #cv-h[Personal Cloud Platform (apps.corbet.ch)]
  #v(6.3pt)
  #cv-s[since 2024]
  #v(7.35pt)
  #cv-b[Digital sovereignty: 30+ self-hosted services, 100+ TB storage, local LLMs, IdP and agentic AI systems]
  #v(10.5pt)
  #cv-h[eCommerce Operations (eBay Resale)]
  #v(6.3pt)
  #cv-s[2017 – 2025]
  #v(7.35pt)
  #cv-b[Five-figure eBay resale: automated listing, tracking and logistics via mini-ERP; exited at 80% book value]
  #v(10.5pt)
  #cv-h[Hardware & Software Services (SMB/B2C)]
  #v(6.3pt)
  #cv-s[2009 – 2024]
  #v(7.35pt)
  #cv-b[Profitable diagnostics, bespoke builds and repairs for SMB and B2C clients; continuity through disruption]
  #v(10.5pt)
  #cv-h[Content Strategy & Media]
  #v(6.3pt)
  #cv-s[since 2025]
  #v(7.35pt)
  #cv-b[Building blog and podcast combining AI, finance and strategy; AV production at Swiss Python Summit]
  #v(10.5pt)
  #cv-h[Investment Portfolio]
  #v(6.3pt)
  #cv-s[since 2021]
  #v(7.35pt)
  #cv-b[Diversified portfolio across equities, alternatives and early-stage VC; balancing value and momentum plays]
]
