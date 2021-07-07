let meta = ../../common/meta.dhall
let number = meta.number
let no_identifiers = meta.no_identifiers
in {
    name = "Days_AST_DILIOnsetToPeak",
    identifiers = no_identifiers,
    feature = {
        feature_type = number,
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}