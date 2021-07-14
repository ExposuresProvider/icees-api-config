let meta = ../../common/meta.dhall
let range = meta.range
let qcut = meta.qcut
in {
    name = "ESTPROPHOUSEHOLDSNOAUTO_qcut",
    feature = {
        feature_type = range 1 4,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategy = qcut 4
}