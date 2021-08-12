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
        "PUBCHEM.COMPOUND:20469",
        "PUBCHEM.COMPOUND:11957468",
        "PUBCHEM.COMPOUND:16218996",
        "PUBCHEM.COMPOUND:2308",
        "PUBCHEM.COMPOUND:24867475",
        "PUBCHEM.COMPOUND:46780650",
        "PUBCHEM.COMPOUND:126968472",
        "PUBCHEM.COMPOUND:133687604",
        "PUBCHEM.COMPOUND:134688323",
        "RxNorm:1797917",
        "RxNorm:966538",
        "RxNorm:966542",
        "RxNorm:1490668",
        "RxNorm:1490774",
        "RxNorm:1998772",
        "RxNorm:1998774",
        "RxNorm:1797902",
        "RxNorm:1797921",
        "RxNorm:966536",
        "RxNorm:966540",
        "RxNorm:966629",
        "RxNorm:966635",
        "RxNorm:966675",
        "RxNorm:966765",
        "RxNorm:1490666",
        "RxNorm:1490773",
        "RxNorm:1797900",
        "RxNorm:1797910",
        "RxNorm:1797920",
        "RxNorm:1797926",
        "RxNorm:1998771",
        "RxNorm:1998773",
        "RxNorm:562655",
        "UMLS:C1967476",
        "UMLS:C2346351",
        "UMLS:C0939055",
        "UMLS:C3714827",
        "UMLS:C3817550",
        "UMLS:C4522192",
        "UMLS:C4522193",
        "UMLS:C3871474",
        "UMLS:C3281436",
        "UMLS:C1967874",
        "UMLS:C0974804",
        "UMLS:C0357974",
        "UMLS:C1166496",
        "UMLS:C0974805",
        "UMLS:C0357973",
        "UMLS:C3714825",
        "UMLS:C3714821",
        "UMLS:C3871491",
        "UMLS:C2747543",
        "UMLS:C3281430",
        "UMLS:C0795284",
        "UMLS:C4550668",
        "UMLS:C4550669",
        "UMLS:C1591601",
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
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}