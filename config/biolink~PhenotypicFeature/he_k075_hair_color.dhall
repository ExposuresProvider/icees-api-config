let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "he_k075_hair_color",
    feature = {
        feature_type = enum [
            "Brown",
            "Red",
            "Black",
            "Auburn",
            "Blonde"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}