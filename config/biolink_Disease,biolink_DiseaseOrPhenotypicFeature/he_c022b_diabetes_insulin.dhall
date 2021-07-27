let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_c022b_diabetes_insulin",
    identifiers = [
        "SCITD:147980003",
        "SCITD:170747006",
        "SCITD:24471000000103",
        "SCITD:314194001",
        "SCITD:390572003",
        "SCITD:314887002",
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
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    },
    binning_strategy = max_cutoff 2
}