let meta = ../../common/meta.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
in {
    name = "Metaproterenol",
    identifiers = [
        "SMILES:CC(C)NCC(O)C1CC(O)CC(O)C1",
        "CAS:586-06-1",
        "MESH:D009921",
        "PUBCHEM:4086",
        "RXCUI:979316",
        "RXCUI:979379",
        "RXCUI:979409",
        "RXCUI:979415",
        "RXCUI:979444",
        "RXCUI:979475",
        "RXCUI:979489",
        "RXCUI:991632",
        "UMLSCUI:C0978480",
        "UMLSCUI:C0978476",
        "UMLSCUI:C0689498",
        "UMLSCUI:C0978479",
        "UMLSCUI:C1878050",
        "UMLSCUI:C0689500",
        "UMLSCUI:C0978475",
        "UMLSCUI:C0978477",
        "SCTID:372797004",
        "SCTID:54172006",
        "SCTID:387857009",
        "SCTID:320324008",
        "SCTID:6067003",
        "SCTID:387852003",
        "SCTID:438947006",
        "SCTID:320325009",
        "SCTID:376006009",
        "SCTID:371698001",
        "SCTID:376747000",
        "SCTID:371696002",
        "SCTID:371697006"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "979316",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "979379",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "979409",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "979415",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "979444",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "979475",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "979489",
            system = "http://www.nlm.nih.gov/research/umls/rxnorm"
        },
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            code = "991632",
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