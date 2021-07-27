let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let enum = meta.enum
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