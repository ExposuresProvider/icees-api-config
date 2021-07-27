let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "HepatitisA",
    identifiers = [
        "MESH:D006506",
        "UMLS:C0019159"
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