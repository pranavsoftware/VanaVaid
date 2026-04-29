# Technology Readiness Dossier (TRD)

Event: VIT-SYNERGY 2026  
Host: SpoRIC, VIT Vellore

## SECTION 1: GENERAL INFORMATION

- Project Title: Geo-Medicinal Intelligence Prototype for Location-Aware Herbal Potency, Safety Screening, and Rapid Spectral Quality Assessment
- Principal Investigator (PI): Dr. Jaishree Jaikrishnan
- Position: Assistant Professor, Senior Grade 1
- Department: Department of English
- School/Centre: School of Social Sciences and Languages
- Emp ID / Reg. No.: 19731
- VIT Inventor ID: R-IPR0003600P
- Contact (Office): 6238061305 | jaishree.jaikrishnan@vit.ac.in
- Office Address: Cabin Number 201 D, CBMR Building, Vellore Institute of Technology, Vellore, India - 632014
- Thematic Cluster: Healthcare and Computing (Digital Health, AI for Pharma and Herbal Therapeutics)
- Current TRL Level: Confirmed TRL 4 (laboratory-validated integrated prototype)

## SECTION 2: THE PROBLEM AND SOLUTION (The Value Proposition)

- Industry Pain Point (100 words max):
  Herbal and phytopharma companies face high variability in plant potency across regions, limited personalized dosing support, incomplete herb-drug interaction evidence, and expensive quality testing. Current workflows depend on slow laboratory assays and static reference databases, causing delay, cost escalation, and safety uncertainty during sourcing, formulation, and clinical translation. Industry needs a fast, data-driven decision system that can estimate expected compound strength by location, flag interaction risk early, and reduce dependence on full lab testing for every sample.

- Technical Solution (100 words max):
  This prototype combines five AI engines into one pipeline: geo-potency prediction, patient-personalized bioavailability estimation, herb-drug interaction inference, reverse botanical recommendation, and 5-channel spectral compound quantification. Compared with current lookup-only systems, it provides predictive outputs with confidence bounds, supports undocumented interaction risk screening, and enables low-cost field quality triage before full lab confirmation. The result is faster screening, better safety decisions, and lower testing overhead for R&D and manufacturing teams.

- Core Features (Current Prototype Technical Specifications):
  1. Location-aware phytochemical predictor using Gaussian Process modeling with uncertainty bounds.
  2. Personalized dosage support using Bayesian neural modeling with probabilistic bioavailability output.
  3. Herb-drug risk engine using knowledge-graph embeddings plus structural features for novel pair inference.
  4. Multi-objective recommendation layer balancing potency, safety, personalization, and local availability.
  5. 5-channel CNN inference for field spectral analysis (32x32x5 input, 4 compound outputs).

## SECTION 3: PROTOTYPE STATUS (The Evidence)

- Validation Environment:
  Integrated prototype validated in controlled academic settings using curated NAPRALERT-style data (1,474 records, 15 medicinal plants, 15 Indian eco-regions), cross-validation with spatial holdout, and laboratory-referenced phytochemical values from peer-reviewed HPLC/GC-MS literature. Spectral model tested on field-like image inputs and compared against lab-style targets.

- Key Results (Quantifiable):
  1. Personalized bioavailability module achieved MAE 1.84% and R^2 = 0.915, reducing error by about 70% versus static dosing-table baseline (MAE 6.34%).
  2. Interaction and field screening performance: herb-drug interaction model achieved ROC-AUC 0.996 and 95.6% accuracy for novel-pair risk inference, while spectral module delivered 0.14-second inference with major cost advantage (about INR 10 per sample versus about INR 2,500 laboratory route), with best compound-wise performance up to R^2 = 0.950 (flavonoids).

- Images/Video Link (30-second demo):
  - Demo video: [To be added: Google Drive/YouTube unlisted link]
  - Suggested QR target: Same link above for roundtable showcase
  - Available visuals for dossier/pitch:
    outputs/novelty1_temporal_spatial.png; outputs/novelty2_pharmacokinetic.png; outputs/novelty3_knowledge_graph.png; outputs/novelty5_spectral_cnn.png; outputs/integration_e2e_results.png

## SECTION 4: SCALABILITY AND INDUSTRY REQUIREMENT

- Target Industry:
  1. Phytopharmaceutical and nutraceutical manufacturers
  2. Herbal extract processors and contract manufacturers
  3. Digital health and clinical decision-support companies
  4. Quality-control and testing laboratories
  5. Integrative medicine hospital networks

- Gap to Market (Need to Reach TRL 6 Pilot Scale):
  1. Specific industrial components:
     Standardized multispectral/portable imaging hardware kit, rugged field capture setup, and production-grade API gateway.
  2. Real-world testing environment:
     Pilot deployment across 2-3 industrial sourcing zones and at least one processing line to validate batch-to-batch performance under operational variability.
  3. Integration with existing industrial software/hardware:
     Connector layer for LIMS/ERP/QMS workflows, batch traceability IDs, and compliance-ready audit logs.
  4. Certification/compliance testing:
     Validation protocol alignment for regulated use-cases (BIS-equivalent quality frameworks and domain-specific safety documentation), plus third-party performance benchmarking.

- Industry Collaboration Type Sought:
  1. Joint R&D pilot with shared testbed access and real sample streams
  2. In-kind support (equipment, field sites, instrumentation calibration)
  3. Co-development funding for TRL 5 to TRL 6 hardening
  4. Optional licensing/commercialization pathway after pilot KPI closure

## SECTION 5: INTELLECTUAL PROPERTY (IP)

- IP Status: Patentable (as per IPR portal review)
- IPR Portal ID: R-IPR0003600P
- Planned Action Before/After VIT-SYNERGY 2026:
  1. Track portal progression from patentability assessment to filing/prosecution milestones.
  2. Align claim strategy for integrated architecture and geo-personalization plus interaction-aware recommendation workflow.
  3. Prepare commercialization package with claim chart and pilot validation dossier.

---

## One-Line Industry Ask for Innovation Runway

We seek an industry co-creation partner for pilot deployment, real-world validation data, and compliance-oriented productization support to move this validated TRL-4 prototype to TRL-6 within 9-12 months.
