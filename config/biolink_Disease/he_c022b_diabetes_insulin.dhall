let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_c022b_diabetes_insulin",
    identifiers = [
        "SNOMED:147980003",
        "SNOMED:170747006",
        "SNOMED:24471000000103",
        "SNOMED:314194001",
        "SNOMED:390572003",
        "SNOMED:314887002",
        "MESH:D007328",
        "MESH:C091593",
        "MESH:D000069057"
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