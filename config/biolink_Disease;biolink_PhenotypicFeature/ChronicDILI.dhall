let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ChronicDILI",
    identifiers = [
        "MESH:D056487"
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