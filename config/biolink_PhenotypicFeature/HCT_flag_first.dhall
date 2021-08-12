let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "HCT_flag_first",
    identifiers = [
        "LOINC:24360-0",
        "LOINC:20570-8",
        "LOINC:4544-3",
        "NCIT:C64796",
        "UMLS:C0018935",
        "SCTID:165416002"
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