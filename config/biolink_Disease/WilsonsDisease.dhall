let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "WilsonsDisease",
    identifiers = [
        "MONDO:0010200",
        "MONDO:0043233",
        "UMLS:C4511444",
        "MONDO:0005016",
        "UMLS:C0017667",
        "UMLS:C3665549",
        "UMLS:C4551303",
        "MESH:C093154",
        "ICD9:275.%",
        "ICD10:E83.%",
        "ICD10:H18.%"
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