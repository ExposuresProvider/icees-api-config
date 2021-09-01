let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let number = meta.number
in {
    name = "Days_AST_DILIOnsetToPeak",
    identifiers = no_identifiers,
    feature = {
        feature_type = number,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}