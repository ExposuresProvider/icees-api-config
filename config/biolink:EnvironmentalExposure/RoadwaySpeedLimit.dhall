let meta = ../../common/meta.dhall
let number = meta.number
let nearest_feature_attribute = meta.nearest_feature_attribute
let integer = meta.integer
in {
    name = "RoadwaySpeedLimit",
    mapping = nearest_feature_attribute {
        dataset = "nearestRoadHPMS",
        name = "SPEED",
        datatype = number
    },
    feature = {
        feature_type = integer,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}