let meta = ../../common/meta.dhall
let no_categories = meta.no_categories
let range = meta.range
in {
    name = "DILI",
    feature = {
        feature_type = range 0 1,
        categories = no_categories
    }
}