let meta = ../../common/meta.dhall
let range = meta.range
let no_categories = meta.no_categories
in {
    name = "year",
    feature = {
        feature_type = range 2010 2021,
        categories = no_categories
    }
}