let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "Amiodarone_gttRx",
    identifiers = [
        "PUBCHEM:2157",
        "CHEBI:2663",
        "CHEBI:2664",
        "NCIT:C62002",
        "UMLSCUI:C0002598",
        "NCIT:C236",
        "UMLSCUI:C0700442",
        "NCIT:C10307",
        "UMLSCUI:C0280651",
        "NCIT:C9974",
        "UMLSCUI:C0279280",
        "NCIT:C9973",
        "UMLSCUI:C0279279",
        "RxNorm:703",
        "RxNorm:1663223",
        "RxNorm:203114",
        "RxNorm:1151983",
        "RxNorm:790892",
        "RxNorm:577358",
        "LOINC:LP16028-0",
        "SCTID:372821002",
        "SCTID:105063004",
        "SCTID:845331000000109",
        "SCTID:297001003",
        "SCTID:291954007",
        "SCTID:318180009",
        "SCTID:52574003"
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
            "biolink:ChemicalSubstance",
            "biolink:ChemicalExposure",
            "biolink:Drug"
        ]
    },
    binning_strategy = max_cutoff 2
}