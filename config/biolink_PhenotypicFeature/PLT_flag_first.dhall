let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "PLT_flag_first",
    identifiers = [
        "LOINC:26515-7",
        "LOINC:7773",
        "NCIT:C12520",
        "UMLSCUI:C0005821",
        "SCTID:165558001"
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