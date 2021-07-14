let meta = ../../common/meta.dhall
let nearest_feature_distance = meta.nearest_feature_distance
let range = meta.range
let range_bins = meta.range_bins
in {
    name = "MajorRoadwayHighwayExposure",
    identifiers = [
        "SCTID:272510001"
    ],
    mapping = nearest_feature_distance {
        dataset = "nearestRoadTL",
        maximum = 500.0
    },
    feature = {
        feature_type = range 1 6,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    },
    binning_strategy = range_bins {
        bins = [
            0.0,
            50.0,
            100.0,
            200.0,
            300.0,
            500.0,
            Infinity
        ],
        right = False,
        include_lowest = True,
        labels = [
            "1",
            "2",
            "3",
            "4",
            "5",
            "6"
        ]
    }
}