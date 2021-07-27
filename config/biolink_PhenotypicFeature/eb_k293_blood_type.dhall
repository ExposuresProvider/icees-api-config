let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "eb_k293_blood_type",
    feature = {
        feature_type = enum [
            "O Positive",
            "O Negative",
            "A Positive",
            "A Negative",
            "B Positive",
            "B Negative",
            "AB Positive",
            "AB Negative",
            "Don't know"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}