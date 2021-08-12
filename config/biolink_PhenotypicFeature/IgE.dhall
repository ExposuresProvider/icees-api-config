let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "IgE",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}