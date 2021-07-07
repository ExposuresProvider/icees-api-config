let meta = ../../common/meta.dhall
let no_categories = meta.no_categories
let range = meta.range
in {
    name = "Inflluenza7pointClinicalStatusScore",
    feature = {
        feature_type = range 0 10,
        categories = no_categories
    }
}