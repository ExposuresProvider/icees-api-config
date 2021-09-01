let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let range = meta.range
in {
    name = "Year_DILI_Onset",
    identifiers = no_identifiers,
    feature = {
        feature_type = range 1900 2050,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}