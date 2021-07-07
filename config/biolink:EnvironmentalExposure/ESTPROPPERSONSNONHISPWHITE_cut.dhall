let meta = ../../common/meta.dhall
let cut = meta.cut
let range = meta.range
in {
    name = "ESTPROPPERSONSNONHISPWHITE_cut",
    feature = {
        feature_type = range 1 4,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategy = cut 4
}