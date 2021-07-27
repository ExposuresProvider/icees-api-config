let meta = ../../common/meta.dhall
let range = meta.range
let qcut = meta.qcut
in {
    name = "DISTANCE_qcut",
    feature = {
        feature_type = range 1 6,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategy = qcut 6
}