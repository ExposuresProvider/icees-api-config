let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "eb_a016_zinc",
    identifiers = [
        "LOINC:8LP203296-1",
        "LOINC:881088-7",
        "LOINC:881896-3",
        "MESH:D015032",
        "SNOMED:286617004",
        "SNOMED:788651004"
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