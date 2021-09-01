let meta = ../../common/meta.dhall
let nearest_feature_attribute = meta.nearest_feature_attribute
let number = meta.number
let integer = meta.integer
let no_categories = meta.no_categories
in {
    name = "RoadwaySpeedLimit",
    mapping = nearest_feature_attribute {
        dataset = "nearestRoadHPMS",
        name = "SPEED",
        datatype = number
    },
    feature = {
        feature_type = integer,
        categories = no_categories
    }
}