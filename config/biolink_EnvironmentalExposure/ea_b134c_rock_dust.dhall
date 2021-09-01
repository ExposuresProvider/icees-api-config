let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_b134c_rock_dust",
    identifiers = [
        "ENVO:01001398",
        "ENVO:01001108"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategy = max_cutoff 2
}