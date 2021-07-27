let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let enum = meta.enum
in {
    name = "FinalCausalityScoreDx",
    identifiers = no_identifiers,
    feature = {
        feature_type = enum [
            "Unlikely",
            "Possible",
            "Probable",
            "Highly Likely",
            "Definite"
        ],
        categories = [
            "biolink:Disease",
            "biolink:PhenotypicFeature"
        ]
    }
}