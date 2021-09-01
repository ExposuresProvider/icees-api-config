let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "BMI_Category",
    feature = {
        feature_type = enum [
            "Underweight",
            "Normal",
            "Overweight",
            "Obese",
            "Other/Multiracial"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}