let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "CURRENT_AGE2",
    feature = {
        feature_type = enum [
            "<5",
            "5-17",
            "18-44",
            "45-64",
            "65-89"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    binning_strategy = max_cutoff 4
}