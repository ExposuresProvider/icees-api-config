let meta = ../../common/meta.dhall
let number = meta.number
let nearest_feature_attribute = meta.nearest_feature_attribute
let integer = meta.integer
in {
    name = "RoadwayAADT",
    mapping = nearest_feature_attribute {
        dataset = "nearestRoadHPMS",
        name = "AADT",
        datatype = number
    },
    feature = {
        feature_type = integer,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}