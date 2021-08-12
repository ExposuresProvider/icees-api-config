let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Ethnicity",
    identifiers = [
        "NCIT:C29933",
        "NCIT:C16564",
        "UMLS:C0015031",
        "SCTID:186034007",
        "UMLS:C2733502",
        "UMLS:C1287117",
        "UMLS:C1301552"
    ],
    feature = {
        feature_type = enum [
            "Not Hispanic",
            "Unknown",
            "Hispanic"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}