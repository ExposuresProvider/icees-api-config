let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Metaproterenol",
    identifiers = [
        "SMILES:CC(C)NCC(O)C1CC(O)CC(O)C1",
        "CAS:586-06-1",
        "MESH:D009921",
        "PUBCHEM.COMPOUND:4086",
        "RxNorm:979316",
        "RxNorm:979379",
        "RxNorm:979409",
        "RxNorm:979415",
        "RxNorm:979444",
        "RxNorm:979475",
        "RxNorm:979489",
        "RxNorm:991632",
        "UMLS:C0978480",
        "UMLS:C0978476",
        "UMLS:C0689498",
        "UMLS:C0978479",
        "UMLS:C1878050",
        "UMLS:C0689500",
        "UMLS:C0978475",
        "UMLS:C0978477",
        "SNOMED:372797004",
        "SNOMED:54172006",
        "SNOMED:387857009",
        "SNOMED:320324008",
        "SNOMED:6067003",
        "SNOMED:387852003",
        "SNOMED:438947006",
        "SNOMED:320325009",
        "SNOMED:376006009",
        "SNOMED:371698001",
        "SNOMED:376747000",
        "SNOMED:371696002",
        "SNOMED:371697006"
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
            "biolink:ChemicalEntity",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}