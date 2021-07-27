let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "THROUGH_LANES",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}