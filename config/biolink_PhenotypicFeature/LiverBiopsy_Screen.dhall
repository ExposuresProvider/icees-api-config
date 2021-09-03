let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "LiverBiopsy_Screen",
    identifiers = [
        "SNOMED:86259008",
        "SNOMED:309203003",
        "SNOMED:15050001",
        "SNOMED:235456005",
        "SNOMED:274325001",
        "SNOMED:303588003",
        "SNOMED:82531008",
        "SNOMED:274355008",
        "SNOMED:430799001",
        "SNOMED:8345004",
        "SNOMED:438300009"
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