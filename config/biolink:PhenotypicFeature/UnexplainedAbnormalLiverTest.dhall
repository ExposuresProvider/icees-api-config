let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "UnexplainedAbnormalLiverTest",
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
            "biolink:PhenotypicFeature",
            "biolink:Disease",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}