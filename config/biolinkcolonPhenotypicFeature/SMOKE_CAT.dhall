let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "SMOKE_CAT",
    feature = {
        feature_type = enum [
            "Never",
            "Ever"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}