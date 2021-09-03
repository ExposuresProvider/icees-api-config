let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_b016_raynauds",
    identifiers = [
        "MESH:D011928",
        "SNOMED:22954002",
        "SNOMED:195295006",
        "SNOMED:195296007",
        "SNOMED:266261006",
        "SNOMED:73483003",
        "SNOMED:403674007",
        "LOINC:67732-8"
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