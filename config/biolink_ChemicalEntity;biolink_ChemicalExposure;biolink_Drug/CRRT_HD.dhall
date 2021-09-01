let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CRRT_HD",
    identifiers = [
        "MONDO:000153",
        "MONDO:0019440",
        "MONDO:0009133",
        "RxNorm:3310",
        "RxNorm:283846",
        "RxNorm:241953",
        "RxNorm:241794",
        "RxNorm:375498",
        "RxNorm:334307",
        "RxNorm:334308",
        "RxNorm:334309",
        "SNOMED:265764009",
        "SNOMED:108241001",
        "NCIT:C15221",
        "UMLS:C0011946",
        "NCIT:C15248",
        "UMLS:C0019004"
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