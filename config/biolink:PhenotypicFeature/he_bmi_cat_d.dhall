let meta = ../../common/meta.dhall
let range = meta.range
in {
    name = "he_bmi_cat_d",
    feature = {
        feature_type = range 0 4,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}