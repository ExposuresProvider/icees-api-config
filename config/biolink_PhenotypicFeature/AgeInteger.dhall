let meta = ../../common/meta.dhall
let range = meta.range
in {
    name = "AgeInteger",
    feature = {
        feature_type = range 0 1,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}