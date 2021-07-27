let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_k074_eye_color",
    feature = {
        feature_type = enum [
            "Blue",
            "Hazel",
            "Brown/Black",
            "Gray",
            "Green"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}