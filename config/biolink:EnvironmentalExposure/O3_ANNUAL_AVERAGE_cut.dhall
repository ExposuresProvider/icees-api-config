let meta = ../../common/meta.dhall
let cut = meta.cut
let range = meta.range
in {
    name = "O3_ANNUAL_AVERAGE_cut",
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategy = cut 5
}