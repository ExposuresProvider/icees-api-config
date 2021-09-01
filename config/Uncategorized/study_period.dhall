let meta = ../../common/meta.dhall
let string = meta.string
let no_categories = meta.no_categories
in {
    name = "study_period",
    feature = {
        feature_type = string,
        categories = no_categories
    }
}