let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let enum = meta.enum
in {
    name = "Eosinophil_GreaterThan500",
    identifiers = no_identifiers,
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}