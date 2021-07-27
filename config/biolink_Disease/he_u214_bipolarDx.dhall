let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_u214_bipolarDx",
    identifiers = [
        "MONDO:0004985",
        "MONDO:0024613",
        "MONDO:0000693",
        "MONDO:0001866",
        "MONDO:0007440",
        "MONDO:0010648",
        "MONDO:0012642",
        "MONDO:0012685",
        "MONDO:0012686",
        "MONDO:0012877",
        "MONDO:0012881",
        "MONDO:0012882",
        "MONDO:0024612",
        "MONDO:0012319"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:Disease"
        ]
    },
    binning_strategy = max_cutoff 2
}