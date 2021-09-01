let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let generic_fhir_mapping = meta.generic_fhir_mapping
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ConvalescentPlasma",
    identifiers = [
        "NCIT:C171633",
        "NCIT:C173750",
        "LOINC:LP418814-2",
        "LOINC:LP418813-4",
        "LOINC:LP418812-6",
        "LOINC:95355-4",
        "LOINC:95354-7",
        "LOINC:LP418995-9"
    ],
    mapping = generic_fhir_mapping [
        {
            resource = "Substance",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "95355-4"
        },
        {
            resource = "Substance",
            code_is_regex = False,
            system_is_regex = False,
            system = "http://www.nlm.nih.gov/research/umls/rxnorm",
            code = "95354-7"
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