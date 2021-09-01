let meta = ../../common/meta.dhall
let integer = meta.integer
let no_categories = meta.no_categories
in {
    name = "THROUGH_LANES",
    feature = {
        feature_type = integer,
        categories = no_categories
    }
}