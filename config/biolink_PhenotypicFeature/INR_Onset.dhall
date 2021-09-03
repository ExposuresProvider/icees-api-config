let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "INR_Onset",
    identifiers = [
        "SNOMED:1951000175101",
        "SNOMED:165581004",
        "SNOMED:165583001",
        "SNOMED:165582006",
        "MESH:D019934"
    ],
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}