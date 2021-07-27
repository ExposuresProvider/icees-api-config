let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "UnexplainedAbnormalLiverTestDx",
    identifiers = [
        "SCTID:207471009",
        "SCTID:166603001"
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