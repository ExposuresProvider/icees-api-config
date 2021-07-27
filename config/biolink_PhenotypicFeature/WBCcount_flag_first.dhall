let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "WBCcount_flag_first",
    identifiers = [
        "LOINC:26464-8",
        "LOINC:6690-2",
        "NCIT:C12529",
        "UMLSCUI:C0023516",
        "SCTID:165509000"
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