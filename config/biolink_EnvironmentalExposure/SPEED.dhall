let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "SPEED",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}