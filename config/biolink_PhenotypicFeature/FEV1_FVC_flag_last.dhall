let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "FEV1_FVC_flag_last",
    feature = {
        feature_type = enum [
            "low",
            "normal",
            "high"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    identifiers = [
        "LOINC:52485-0",
        "LOINC:19926-5",
        "NCIT:C38084",
        "UMLS:C0849974",
        "SNOMED:165044007"
    ]
}