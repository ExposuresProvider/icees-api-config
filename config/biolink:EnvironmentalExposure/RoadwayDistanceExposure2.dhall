let meta = ../../common/meta.dhall
let range = meta.range
in {
    name = "RoadwayDistanceExposure2",
    feature = {
        feature_type = range 1 6,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}