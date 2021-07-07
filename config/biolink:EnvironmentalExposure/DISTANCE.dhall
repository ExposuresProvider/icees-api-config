let meta = ../../common/meta.dhall
let range = meta.range
let cut = meta.cut
in {
    name = "DISTANCE",
    feature = {
        feature_type = range 1 6,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategy = cut 6
}