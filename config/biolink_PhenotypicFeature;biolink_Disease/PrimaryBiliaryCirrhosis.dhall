let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "PrimaryBiliaryCirrhosis",
    identifiers = [
        "UMLS:C2931878",
        "MESH:C069356",
        "MONDO:0005388",
        "MONDO:0007193",
        "MONDO:0013079",
        "MONDO:0013080",
        "MONDO:0013636",
        "MONDO:0013637",
        "MONDO:0013276",
        "LOINC:LA9639-1",
        "LOINC:LP90002-4",
        "MESH:D008105",
        "MESH:D008104",
        "MESH:D008103",
        "SCITD:155815006",
        "SCITD:266540000",
        "SCITD:1761006",
        "ICD10:K74.%",
        "ICD9:571.%"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:Disease"
        ]
    }
}