let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "RACE",
    feature = {
        feature_type = enum [
            "White",
            "BAA",
            "Multiple",
            "Unknown/NR",
            "Asian",
            "AIAN",
            "NHOPI"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}