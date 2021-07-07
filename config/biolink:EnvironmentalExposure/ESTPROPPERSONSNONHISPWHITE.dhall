let meta = ../../common/meta.dhall
let range = meta.range
in {
    name = "ESTPROPPERSONSNONHISPWHITE",
    feature = {
        feature_type = range 1 4,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}