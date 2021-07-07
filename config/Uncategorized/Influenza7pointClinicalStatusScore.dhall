let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let range = meta.range
let no_categories = meta.no_categories
in {
    name = "Influenza7pointClinicalStatusScore",
    identifiers = no_identifiers,
    feature = {
        feature_type = range 0 10,
        categories = no_categories
    }
}