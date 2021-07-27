let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let enum = meta.enum
in {
    name = "Initial_RUCAM",
    identifiers = no_identifiers,
    feature = {
        feature_type = enum [
            "Excluded",
            "Unlikely",
            "Possible",
            "Probable",
            "Highly Probable"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:Disease"
        ]
    }
}