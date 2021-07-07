let meta = ../../common/meta.dhall
let integer = meta.integer
let no_identifiers = meta.no_identifiers
in {
    name = "SpO2FiO2ratio",
    identifiers = no_identifiers,
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}