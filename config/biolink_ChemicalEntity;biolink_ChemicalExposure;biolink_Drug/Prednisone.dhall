let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Prednisone",
    identifiers = [
        "SMILES:C[C@]12CC(:O)[C@H]3[C@@H](CCC4:CC(:O)C:C[C@]34C)[C@@H]1CC[C@]2(O)C(:O)CO",
        "CAS:68-59-7",
        "CAS:53-03-2",
        "MESH:D011241",
        "CHEMBL:CHEMBL635",
        "PUBCHEM.COMPOUND:5865",
        "RxNorm:763179",
        "RxNorm:763181",
        "RxNorm:795858",
        "RxNorm:763185",
        "RxNorm:763183",
        "RxNorm:206837",
        "RxNorm:206954",
        "RxNorm:206988",
        "RxNorm:206997",
        "RxNorm:207048",
        "RxNorm:1303131",
        "RxNorm:1303134",
        "RxNorm:1303137",
        "RxNorm:198146",
        "RxNorm:198148",
        "RxNorm:205301",
        "RxNorm:312615",
        "RxNorm:312617",
        "RxNorm:312687",
        "RxNorm:1303135",
        "RxNorm:198144",
        "RxNorm:198145",
        "RxNorm:1303125",
        "RxNorm:1303132",
        "UMLS:C1811498",
        "UMLS:C0690124",
        "UMLS:C2343331",
        "UMLS:C1814982",
        "UMLS:C1814983",
        "UMLS:C0708023",
        "UMLS:C0708166",
        "UMLS:C0708220",
        "UMLS:C0708232",
        "UMLS:C0708301",
        "UMLS:C3475339",
        "UMLS:C3475342",
        "UMLS:C3475345",
        "UMLS:C0690123",
        "UMLS:C0690128",
        "UMLS:C0705898",
        "UMLS:C0979757",
        "UMLS:C0989249",
        "UMLS:C0982851",
        "UMLS:C3475343",
        "UMLS:C0690120",
        "UMLS:C0690121",
        "UMLS:C3475333",
        "UMLS:C3475340",
        "SCTID:116602009",
        "SCTID:325456002",
        "SCTID:373989007",
        "SCTID:373994007",
        "SCTID:374058000",
        "SCTID:374072009",
        "SCTID:418349006",
        "SCTID:10312003",
        "SCTID:768296006",
        "SCTID:722491009"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "763179",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "763181",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "795858",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "763185",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "763183",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "206837",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "206954",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "206988",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "206997",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "207048",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1303131",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1303134",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1303137",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198146",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198148",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "205301",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "312615",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "312617",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "312687",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1303135",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198144",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "198145",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1303125",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "1303132",
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