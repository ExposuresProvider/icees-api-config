let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ImmunodulationConvalescentPlasma",
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