let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let integer = meta.integer
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