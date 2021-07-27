let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "ChronicArteryDiseaseDx",
    identifiers = [
        "NCIT:C12372",
        "UMLSCUI:C0003842",
        "MONDO:0000473",
        "SCTID:27624003"
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