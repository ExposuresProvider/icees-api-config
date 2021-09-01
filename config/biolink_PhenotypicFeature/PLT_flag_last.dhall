let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "PLT_flag_last",
    identifiers = [
        "LOINC:26515-7",
        "LOINC:7773",
        "NCIT:C12520",
        "UMLS:C0005821",
        "SNOMED:165558001"
    ],
    feature = {
        feature_type = enum [
            "low",
            "normal",
            "high"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}