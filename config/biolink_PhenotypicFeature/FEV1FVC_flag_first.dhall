let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "FEV1FVC_flag_first",
    identifiers = [
        "LOINC:52485-0",
        "LOINC:19926-5",
        "NCIT:C38084",
        "UMLSCUI:C0849974",
        "SCTID:165044007"
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