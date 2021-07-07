let meta = ../../common/meta.dhall
let enum = meta.enum
let no_identifiers = meta.no_identifiers
in {
    name = "Weeks_EarliestSignToDILI",
    identifiers = no_identifiers,
    feature = {
        feature_type = enum [
            "<=1",
            "2 to 4",
            ">4"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}