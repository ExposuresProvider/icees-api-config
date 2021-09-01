let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "HBsAg",
    identifiers = [
        "UMLS:C0149709",
        "PUBCHEM.COMPOUND:10422635",
        "UMLS:C0262505",
        "SCITD:143473009",
        "SCITD:166105007",
        "SCITD:1008791000000106",
        "LOINC:58452-4",
        "LOINC:5195-3",
        "LOINC:5197-9",
        "LOINC:95149-1",
        "LOINC:95234-1",
        "LOINC:50967-9",
        "LOINC:42505-8",
        "LOINC:47364-5",
        "LOINC:10675-7",
        "LOINC:51659-1",
        "LOINC:10674-0",
        "LOINC:7905-3",
        "LOINC:70154-0",
        "LOINC:65633-0",
        "LOINC:5196-1",
        "LOINC:63557-3",
        "LOINC:95148-3",
        "LOINC:75410-1"
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