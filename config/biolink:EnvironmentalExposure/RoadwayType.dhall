let meta = ../../common/meta.dhall
let string = meta.string
let nearest_feature_attribute = meta.nearest_feature_attribute
in {
    name = "RoadwayType",
    mapping = nearest_feature_attribute {
        dataset = "nearestRoadHPMS",
        name = "ROADTYPE",
        datatype = string
    },
    feature = {
        feature_type = string,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}