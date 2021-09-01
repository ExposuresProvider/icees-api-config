let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "UnexplainedAbnormalLiverTestDx",
    identifiers = [
        "SNOMED:207471009",
        "SNOMED:166603001"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease",
            "biolink:PhenotypicFeature"
        ]
    }
}