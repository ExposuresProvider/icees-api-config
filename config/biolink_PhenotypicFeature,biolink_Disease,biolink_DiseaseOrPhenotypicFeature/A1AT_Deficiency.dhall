let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "A1AT_Deficiency",
    identifiers = [
        "MONDO:0013282"
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