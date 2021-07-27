let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ChronicHepatitisB_ScreeningDx",
    identifiers = [
        "MESH:D019694"
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