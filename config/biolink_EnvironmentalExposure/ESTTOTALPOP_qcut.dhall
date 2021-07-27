let meta = ../../common/meta.dhall
let range = meta.range
let qcut = meta.qcut
in {
    name = "ESTTOTALPOP_qcut",
    feature = {
        feature_type = range 1 3,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategy = qcut 3
}