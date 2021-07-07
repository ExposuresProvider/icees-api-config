let meta = ../../common/meta.dhall
let enum = meta.enum
let no_identifiers = meta.no_identifiers
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
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}