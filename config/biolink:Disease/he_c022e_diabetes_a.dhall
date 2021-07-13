let meta = ../../common/meta.dhall
let binning_strategies = ../../common/binning_strategies.dhall
let no_identifiers = meta.no_identifiers
let enum = meta.enum
let max_cutoff = binning_strategies.max_cutoff
in {
    name = "he_c022e_diabetes_a",
    identifiers = no_identifiers,
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