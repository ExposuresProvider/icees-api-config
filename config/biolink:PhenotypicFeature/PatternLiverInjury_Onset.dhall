let meta = ../../common/meta.dhall
let enum = meta.enum
let no_identifiers = meta.no_identifiers
in {
    name = "PatternLiverInjury_Onset",
    identifiers = no_identifiers,
    feature = {
        feature_type = enum [
            "Cholestatic",
            "Hepatocellular",
            "Mixed"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}