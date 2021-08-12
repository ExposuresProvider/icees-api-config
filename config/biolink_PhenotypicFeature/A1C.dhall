let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "A1C",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}