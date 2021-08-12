let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ea_e249_sunburn",
    identifiers = [
        "NCIT:C3395",
        "MESH:D013471",
        "SCTID:403194002",
        "MONDO:0005326"
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