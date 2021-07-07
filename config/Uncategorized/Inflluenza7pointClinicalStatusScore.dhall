let meta = ../../common/meta.dhall
let range = meta.range
let no_categories = meta.no_categories
in {
    name = "Inflluenza7pointClinicalStatusScore",
    feature = {
        feature_type = range 0 10,
        categories = no_categories
    }
}