let meta = ../../common/meta.dhall
let range = meta.range
let cut = meta.cut
in {
    name = "ESTTOTALPOP",
    feature = {
        feature_type = range 1 3,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategy = cut 3
}