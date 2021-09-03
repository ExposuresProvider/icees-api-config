let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "eb_a013_magnesium",
    identifiers = [
        "SNOMED:230122008",
        "SNOMED:390070000",
        "SNOMED:389337007",
        "LOINC:LP72204-8",
        "LOINC:LP102624-6",
        "LOINC:80975-6",
        "LOINC:35264-1",
        "LOINC:9046-4"
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