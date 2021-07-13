let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let no_categories = meta.no_categories
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "UterineCancer",
    identifiers = [
        "SCTID:371973000",
        "SCTID:363354003",
        "SCTID:428941002",
        "SCTID:423973006",
        "SCTID:428944005",
        "SCTID:428047000",
        "SCTID:406043002",
        "SCTID:406044008",
        "MONDO:0002715",
        "MONDO:0016252",
        "MONDO:0006003",
        "MONDO:0005131",
        "MONDO:0003612",
        "MONDO:0000553",
        "MONDO:0006485"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = no_categories
    },
    binning_strategy = max_cutoff 2
}