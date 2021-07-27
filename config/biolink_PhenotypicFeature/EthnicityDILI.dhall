let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "EthnicityDILI",
    identifiers = [
        "NCIT:C29933",
        "NCIT:C16564",
        "UMLSCUI:C0015031",
        "SCTID:186034007",
        "UMLS:C2733502",
        "UMLS:C1287117",
        "UMLS:C1301552"
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