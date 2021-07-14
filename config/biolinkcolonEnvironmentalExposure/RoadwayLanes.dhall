let meta = ../../common/meta.dhall
let nearest_feature_attribute = meta.nearest_feature_attribute
let number = meta.number
let integer = meta.integer
in {
    name = "RoadwayLanes",
    mapping = nearest_feature_attribute {
        dataset = "nearestRoadHPMS",
        name = "THROUGH_LA",
        datatype = number
    },
    feature = {
        feature_type = integer,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}