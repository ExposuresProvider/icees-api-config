let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "GENDER",
    feature = {
        feature_type = enum [
            "Female",
            "Male"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}