let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ChronicHepatitisB_Screening",
    identifiers = [
        "MESH:D019694"
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