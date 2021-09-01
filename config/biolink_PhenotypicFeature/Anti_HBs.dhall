let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Anti_HBs",
    identifiers = [
        "UMLS:C0262505"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}