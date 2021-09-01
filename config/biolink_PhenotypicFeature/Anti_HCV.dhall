let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Anti_HCV",
    identifiers = [
        "SNOMED:64411004",
        "SNOMED:72165005",
        "LOINC:75886-2",
        "LOINC:LP186246-7"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}