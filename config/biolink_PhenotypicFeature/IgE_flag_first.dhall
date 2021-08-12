let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "IgE_flag_first",
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