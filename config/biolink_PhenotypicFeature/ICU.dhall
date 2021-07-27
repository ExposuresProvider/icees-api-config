let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ICU",
    identifiers = [
        "NCIT:C53511",
        "UMLSCUI:C0021708",
        "NCIT:C171454",
        "LOINC:LP173045-8",
        "SCTID:309904001",
        "LOINC:LP76050-1"
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