let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_gender",
    feature = {
        feature_type = enum [
            "Male",
            "Female"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}