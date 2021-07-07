let meta = ../../common/meta.dhall
let range = meta.range
let nearest_point_distance = meta.nearest_point_distance
in {
    name = "MajorRoadwayHighwayExposure",
    identifiers = [
        "SCTID:272510001"
    ],
    mapping = nearest_point_distance {
        dataset = "nearestRoadTL",
        maximum = 500.0
    },
    feature = {
        feature_type = range 1 6,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}