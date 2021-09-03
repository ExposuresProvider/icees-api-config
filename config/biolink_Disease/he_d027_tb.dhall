let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_d027_tb",
    identifiers = [
        "NCIT:C3423",
        "UMLS:C0041296",
        "LOINC:LA10513-2",
        "LOINC:LP75796-0",
        "SNOMED:56717001",
        "SNOMED:154281007",
        "SNOMED:187285000",
        "SNOMED:427099000",
        "SNOMED:25629007",
        "SNOMED:25629007",
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