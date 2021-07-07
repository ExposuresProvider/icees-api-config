let meta = ../../common/meta.dhall
let range_bins = meta.range_bins
let range = meta.range
in {
    name = "CAFO_Exposure",
    feature = {
        feature_type = range 1 6,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategy = range_bins {
        bins = [
            0.0,
            500.0,
            1000.0,
            2000.0,
            4000.0,
            Infinity
        ],
        right = False,
        include_lowest = True,
        labels = [
            "1",
            "2",
            "3",
            "4",
            "5"
        ]
    }
}