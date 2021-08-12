let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "FEV1_FVC",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}