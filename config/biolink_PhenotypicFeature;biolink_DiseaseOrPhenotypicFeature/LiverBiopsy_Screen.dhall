let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "LiverBiopsy_Screen",
    identifiers = [
        "SCITD:86259008",
        "SCITD:309203003",
        "SCITD:15050001",
        "SCITD:235456005",
        "SCITD:274325001",
        "SCITD:303588003",
        "SCITD:82531008",
        "SCITD:274355008",
        "SCITD:430799001",
        "SCITD:8345004",
        "SCITD:438300009"
    ],
    feature = {
        feature_type = enum [
            "No",
            "Yes"
        ],
        categories = [
            "biolink:PhenotypicFeature",
            "biolink:DiseaseOrPhenotypicFeature"
        ]
    }
}