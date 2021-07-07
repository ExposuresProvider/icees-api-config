let meta = ../../common/meta.dhall
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
    }
}