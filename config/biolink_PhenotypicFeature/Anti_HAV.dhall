let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Anti_HAV",
    identifiers = [
        "OMIM:MTHU045723",
        "UMLS:C0001676",
        "UMLS:C0562564",
        "UMLS:C0236868",
        "UMLS:C0338923",
        "UMLS:C1861475",
        "UMLS:C1850464",
        "UMLS:C2749608",
        "UMLS:C3808969",
        "MONDO:0010379",
        "MONDO:0009408",
        "SNOMED:32609007",
        "LOINC:55264-6",
        "LOINC:53775-3",
        "LOINC:95142-6",
        "LOINC:94539-4",
        "LOINC:75860-7",
        "LOINC:22312-3",
        "LOINC:20575-7",
        "LOINC:53776-1",
        "LOINC:89373-5"
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