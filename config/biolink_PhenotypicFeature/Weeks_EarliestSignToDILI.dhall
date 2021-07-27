let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let enum = meta.enum
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