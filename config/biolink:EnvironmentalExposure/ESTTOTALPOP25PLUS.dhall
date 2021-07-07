let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "ESTTOTALPOP25PLUS",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}