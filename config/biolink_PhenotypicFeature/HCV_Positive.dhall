let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "HCV_Positive",
    identifiers = [
        "SNOMED:406104003",
        "LOINC:55276-0"
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