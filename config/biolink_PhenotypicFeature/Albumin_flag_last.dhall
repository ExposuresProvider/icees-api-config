let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "Albumin_flag_last",
    feature = {
        feature_type = enum [
            "low",
            "normal",
            "high",
            "abnormal"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}