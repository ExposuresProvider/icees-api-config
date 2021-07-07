let meta = ../../common/meta.dhall
let enum = meta.enum
let range_bins = meta.range_bins
in {
    name = "D28A_ASTHMA_AD_TEXT2",
    feature = {
        feature_type = enum [
            "<5",
            "5-17",
            "18-44",
            "45-64",
            "65-89"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    binning_strategy = range_bins {
        bins = [
            -Infinity,
            5.0,
            18.0,
            45.0,
            65.0,
            90.0
        ],
        right = False,
        include_lowest = False,
        labels = [
            "<5",
            "5-17",
            "18-44",
            "45-64",
            "65-89"
        ]
    }
}