let meta = ../../common/meta.dhall
let enum = meta.enum
let no_identifiers = meta.no_identifiers
in {
    name = "FinalCausalityScore",
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
            "biolink:PhenotypicFeature",
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}