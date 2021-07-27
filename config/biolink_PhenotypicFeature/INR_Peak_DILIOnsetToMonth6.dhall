let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let integer = meta.integer
in {
    name = "INR_Peak_DILIOnsetToMonth6",
    identifiers = no_identifiers,
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}