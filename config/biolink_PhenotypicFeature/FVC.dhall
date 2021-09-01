let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "FVC",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}