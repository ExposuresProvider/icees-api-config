let meta = ../../common/meta.dhall
let no_identifiers = meta.no_identifiers
let enum = meta.enum
in {
    name = "Weeks_DrugStartToDILI",
    identifiers = no_identifiers,
    feature = {
        feature_type = enum [
            "<=1",
            "2 to 4",
            "5 to 12",
            "13 to 24"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}