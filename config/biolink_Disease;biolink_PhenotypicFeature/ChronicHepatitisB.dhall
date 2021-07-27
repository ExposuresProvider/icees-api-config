let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ChronicHepatitisB",
    identifiers = [
        "UMLS:C0524909"
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