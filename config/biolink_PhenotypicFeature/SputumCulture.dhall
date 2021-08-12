let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "SputumCulture",
    feature = {
        feature_type = enum [
            "Negative",
            "Positive"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}