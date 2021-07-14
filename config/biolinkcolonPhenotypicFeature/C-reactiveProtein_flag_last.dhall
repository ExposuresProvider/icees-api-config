let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "C-reactiveProtein_flag_last",
    feature = {
        feature_type = enum [
            "low",
            "normal",
            "high"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}