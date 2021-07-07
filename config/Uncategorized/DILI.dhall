let meta = ../../common/meta.dhall
let range = meta.range
let no_categories = meta.no_categories
in {
    name = "DILI",
    feature = {
        feature_type = range 0 1,
        categories = no_categories
    }
}