let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "TLR4_AGE2",
    feature = {
        feature_type = enum [
            "<5",
            "5-17",
            "18-44",
            "45-64",
            "65-89"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}