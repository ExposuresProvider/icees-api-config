let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "DiabetesEndocrineDisorderDx",
    identifiers = [
        "UMLS:C0342271"
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