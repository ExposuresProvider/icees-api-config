let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "BMI_CATEGORY",
    feature = {
        feature_type = enum [
            "Normal (18.5 to <25)",
            "Over (25 to <30)",
            "Obese (30+)",
            "Under (<18.5)"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}