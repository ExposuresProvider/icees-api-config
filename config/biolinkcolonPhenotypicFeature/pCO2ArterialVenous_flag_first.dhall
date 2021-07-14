let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "pCO2ArterialVenous_flag_first",
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