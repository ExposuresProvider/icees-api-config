let meta = ../../common/meta.dhall
let range_bins = meta.range_bins
let enum = meta.enum
in {
    name = "CURRENT_AGE",
    feature = {
        feature_type = enum [
            "0-2",
            "3-17",
            "18-34",
            "35-50",
            "51-69",
            "70-89"
        ],
        categories = [
            "biolink:PhenotypicFeature"
        ]
    },
    binning_strategy = range_bins {
        bins = [
            0.0,
            3.0,
            18.0,
            35.0,
            51.0,
            70.0,
            90.0
        ],
        right = False,
        include_lowest = True,
        labels = [
            "0-2",
            "3-17",
            "18-34",
            "35-50",
            "51-69",
            "70-89"
        ]
    }
}