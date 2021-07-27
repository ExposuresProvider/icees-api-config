let meta = ../../common/meta.dhall
let range = meta.range
let qcut = meta.qcut
in {
    name = "ESTTOTALPOP25PLUS_qcut",
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategy = qcut 5
}