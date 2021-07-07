let meta = ../../common/meta.dhall
let range_bins = meta.range_bins
let range = meta.range
let nearest_point_distance = meta.nearest_point_distance
in {
    name = "RoadwayDistanceExposure",
    mapping = nearest_point_distance {
        dataset = "landfill",
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