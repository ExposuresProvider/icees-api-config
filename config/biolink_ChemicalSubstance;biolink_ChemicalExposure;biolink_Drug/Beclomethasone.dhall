let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Beclomethasone",
    identifiers = [
        "SMILES:C[C@H]1C[C@H]2[C@@H]3CCC4:CC(:O)C:C[C@]4(C)[C@@]3(CL)[C@@H](O)C[C@]2(C)[C@@]1(O)C(:O)CO",
        "CAS:4419-39-0",
        "MESH:D001507",
        "CHEMBL:CHEMBL1586",
        "PUBCHEM:20469",
        "PUBCHEM:11957468",
        "PUBCHEM:16218996",
        "PUBCHEM:2308",
        "PUBCHEM:24867475",
        "PUBCHEM:46780650",
        "PUBCHEM:126968472",
        "PUBCHEM:133687604",
        "PUBCHEM:134688323",
        "RXCUI:1797917",
        "RXCUI:966538",
        "RXCUI:966542",
        "RXCUI:1490668",
        "RXCUI:1490774",
        "RXCUI:1998772",
        "RXCUI:1998774",
        "RXCUI:1797902",
        "RXCUI:1797921",
        "RXCUI:966536",
        "RXCUI:966540",
        "RXCUI:966629",
        "RXCUI:966635",
        "RXCUI:966675",
        "RXCUI:966765",
        "RXCUI:1490666",
        "RXCUI:1490773",
        "RXCUI:1797900",
        "RXCUI:1797910",
        "RXCUI:1797920",
        "RXCUI:1797926",
        "RXCUI:1998771",
        "RXCUI:1998773",
        "RXCUI:562655",
        "UMLSCUI:C1967476",
        "UMLSCUI:C2346351",
        "UMLSCUI:C0939055",
        "UMLSCUI:C3714827",
        "UMLSCUI:C3817550",
        "UMLSCUI:C4522192",
        "UMLSCUI:C4522193",
        "UMLSCUI:C3871474",
        "UMLSCUI:C3281436",
        "UMLSCUI:C1967874",
        "UMLSCUI:C0974804",
        "UMLSCUI:C0357974",
        "UMLSCUI:C1166496",
        "UMLSCUI:C0974805",
        "UMLSCUI:C0357973",
        "UMLSCUI:C3714825",
        "UMLSCUI:C3714821",
        "UMLSCUI:C3871491",
        "UMLSCUI:C2747543",
        "UMLSCUI:C3281430",
        "UMLSCUI:C0795284",
        "UMLSCUI:C4550668",
        "UMLSCUI:C4550669",
        "UMLSCUI:C1591601",
        "SCTID:116574000",
        "SCTID:116575004",
        "SCTID:426017007",
        "SCTID:433250002",
        "SCTID:424916002",
        "SCTID:1389007",
        "SCTID:432681009",
        "SCTID:349361004",
        "SCTID:350386006",
        "SCTID:349368005",
        "SCTID:376593004",
        "SCTID:376610006",
        "SCTID:331792000",
        "SCTID:375598003",
        "SCTID:376733004",
        "SCTID:376734005",
        "SCTID:331793005",
        "SCTID:32460003",
        "SCTID:320533006",
        "SCTID:320531008",
        "SCTID:320537007",
        "SCTID:320532001",
        "SCTID:375828001",
        "SCTID:376890009",
        "SCTID:331018007",
        "SCTID:320535004",
        "SCTID:320520000",
        "SCTID:320534000",
        "SCTID:320488008",
        "SCTID:320530009",
        "SCTID:320529004",
        "SCTID:320506007",
        "SCTID:320505006",
        "SCTID:320487003",
        "SCTID:320527002",
        "SCTID:320528007",
        "SCTID:320490009",
        "SCTID:320492001",
        "SCTID:320545002",
        "SCTID:320491008",
        "SCTID:320630002",
        "SCTID:320632005",
        "SCTID:407770009",
        "SCTID:407769008",
        "SCTID:320631003",
        "SCTID:320543009"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797917",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966538",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966542",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1490668",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1490774",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1998772",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1998774",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797902",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797921",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966536",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966540",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966629",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966635",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966675",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "966765",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1490666",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1490773",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797900",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797910",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797920",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1797926",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1998771",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1998773",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "562655",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        }
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}