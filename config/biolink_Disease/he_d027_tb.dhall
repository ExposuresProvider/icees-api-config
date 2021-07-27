let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_d027_tb",
    identifiers = [
        "NCIT:C3423",
        "UMLSCUI:C0041296",
        "LOINC:LA10513-2",
        "LOINC:LP75796-0",
        "SCITD:56717001",
        "SCITD:154281007",
        "SCITD:187285000",
        "SCITD:427099000",
        "SCITD:25629007",
        "SCITD:25629007",
        "MESH:D014376"
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