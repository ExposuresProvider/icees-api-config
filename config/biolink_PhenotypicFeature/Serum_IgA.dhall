let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Serum_IgA",
    identifiers = [
        "UMLS:C3276783",
        "UMLS:C3278891",
        "UMLS:C4540235",
        "UMLS:C3278896",
        "UMLS:C4017766",
        "NCIT:C39588",
        "UMLS:C1847382",
        "UMLS:C4013570",
        "UMLS:C3805779",
        "MONDO:0010744",
        "SNOMED:913461000000106",
        "SNOMED:913471000000104",
        "SNOMED:1000571000000101",
        "SNOMED:1108951000000109",
        "LOINC:LP377047-8",
        "LOINC:LP394347-1",
        "LOINC:LP394650-8",
        "LOINC:LP377467-8",
        "LOINC:LP394673-0",
        "LOINC:LP394360-4",
        "CPT:82784"
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