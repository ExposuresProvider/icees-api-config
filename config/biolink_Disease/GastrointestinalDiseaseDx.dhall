let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "GastrointestinalDiseaseDx",
    identifiers = [
        "UMLS:C0455420",
        "UMLS:C0455553",
        "UMLS:C1301260",
        "UMLS:C0853197",
        "UMLS:C1290615",
        "UMLS:C4324649",
        "UMLS:C0455337",
        "UMLS:C4544979",
        "UMLS:C0729521",
        "UMLS:C4302262",
        "UMLS:C0421218",
        "UMLS:C1609501",
        "UMLS:C0872218",
        "MONDO:0005020",
        "MONDO:0004335",
        "MONDO:0006181",
        "MONDO:0044991",
        "MONDO:0018438",
        "MONDO:0000588",
        "SCITD:266997008",
        "SCITD:161530000",
        "SCITD:138799003",
        "SCITD:160381001",
        "LOINC:LA10532-2",
        "LOINC:LA16968-2",
        "MESH:D005767"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:Disease"
        ]
    }
}