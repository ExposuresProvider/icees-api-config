let meta = ../../common/meta.dhall
let enum = meta.enum
let no_identifiers = meta.no_identifiers
in {
    name = "Weeks_DurationOfSickness",
    identifiers = no_identifiers,
    feature = {
        feature_type = enum [
            "<1",
            "2-4",
            ">4"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}