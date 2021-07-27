let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let range = meta.range
in {
    name = "Influenza7pointClinicalStatusScoreDx",
    identifiers = no_identifiers,
    feature = {
        feature_type = range 0 10,
        categories = [
            "biolink:Disease",
            "biolink:PhenotypicFeature"
        ]
    }
}