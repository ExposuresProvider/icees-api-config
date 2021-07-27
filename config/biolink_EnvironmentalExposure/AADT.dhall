let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "AADT",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}