let meta = ../../common/meta.dhall
let enum = meta.enum
let generic_fhir_mapping = meta.generic_fhir_mapping
in {
    name = "Prednisone",
    identifiers = [
        "SMILES:C[C@]12CC(:O)[C@H]3[C@@H](CCC4:CC(:O)C:C[C@]34C)[C@@H]1CC[C@]2(O)C(:O)CO",
        "CAS:68-59-7",
        "CAS:53-03-2",
        "MESH:D011241",
        "CHEMBL:CHEMBL635",
        "PUBCHEM:5865",
        "RXCUI:763179",
        "RXCUI:763181",
        "RXCUI:795858",
        "RXCUI:763185",
        "RXCUI:763183",
        "RXCUI:206837",
        "RXCUI:206954",
        "RXCUI:206988",
        "RXCUI:206997",
        "RXCUI:207048",
        "RXCUI:1303131",
        "RXCUI:1303134",
        "RXCUI:1303137",
        "RXCUI:198146",
        "RXCUI:198148",
        "RXCUI:205301",
        "RXCUI:312615",
        "RXCUI:312617",
        "RXCUI:312687",
        "RXCUI:1303135",
        "RXCUI:198144",
        "RXCUI:198145",
        "RXCUI:1303125",
        "RXCUI:1303132",
        "UMLSCUI:C1811498",
        "UMLSCUI:C0690124",
        "UMLSCUI:C2343331",
        "UMLSCUI:C1814982",
        "UMLSCUI:C1814983",
        "UMLSCUI:C0708023",
        "UMLSCUI:C0708166",
        "UMLSCUI:C0708220",
        "UMLSCUI:C0708232",
        "UMLSCUI:C0708301",
        "UMLSCUI:C3475339",
        "UMLSCUI:C3475342",
        "UMLSCUI:C3475345",
        "UMLSCUI:C0690123",
        "UMLSCUI:C0690128",
        "UMLSCUI:C0705898",
        "UMLSCUI:C0979757",
        "UMLSCUI:C0989249",
        "UMLSCUI:C0982851",
        "UMLSCUI:C3475343",
        "UMLSCUI:C0690120",
        "UMLSCUI:C0690121",
        "UMLSCUI:C3475333",
        "UMLSCUI:C3475340",
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
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    }
}