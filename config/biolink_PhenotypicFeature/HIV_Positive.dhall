let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "HIV_Positive",
    identifiers = [
        "NCIT:C15175",
        "UMLS:C0855843",
        "UMLS:C0860724",
        "UMLS:C0740290",
        "UMLS:C0456101",
        "SCITD:165816005",
        "SCITD:143224002"
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