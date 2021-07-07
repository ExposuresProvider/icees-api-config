let meta = ../../common/meta.dhall
let integer = meta.integer
let no_identifiers = meta.no_identifiers
in {
    name = "Days_DILIOnsetToInitial",
    identifiers = no_identifiers,
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}