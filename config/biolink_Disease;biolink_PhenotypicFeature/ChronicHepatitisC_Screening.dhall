let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ChronicHepatitisC_Screening",
    identifiers = [
        "SNOMED:128302006",
        "SNOMED:708198006",
        "SNOMED:186640001",
        "MESH:D019698"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease",
            "biolink:PhenotypicFeature"
        ]
    }
}