let meta = ../../common/meta.dhall
let cut = meta.cut
let range = meta.range
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