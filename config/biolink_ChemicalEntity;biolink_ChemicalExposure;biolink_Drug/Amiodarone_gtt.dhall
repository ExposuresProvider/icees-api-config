let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Amiodarone_gtt",
    identifiers = [
        "PUBCHEM.COMPOUND:2157",
        "CHEBI:2663",
        "CHEBI:2664",
        "NCIT:C62002",
        "UMLS:C0002598",
        "NCIT:C236",
        "UMLS:C0700442",
        "NCIT:C10307",
        "UMLS:C0280651",
        "NCIT:C9974",
        "UMLS:C0279280",
        "NCIT:C9973",
        "UMLS:C0279279",
        "RxNorm:703",
        "RxNorm:1663223",
        "RxNorm:203114",
        "RxNorm:1151983",
        "RxNorm:790892",
        "RxNorm:577358",
        "LOINC:LP16028-0",
        "SNOMED:372821002",
        "SNOMED:105063004",
        "SNOMED:845331000000109",
        "SNOMED:297001003",
        "SNOMED:291954007",
        "SNOMED:318180009",
        "SNOMED:52574003"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "MedicationRequest",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "703"
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