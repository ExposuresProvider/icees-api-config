let meta = ../../common/meta.dhall
let range = meta.range
in {
    name = "TLR4_DIST_2X",
    feature = {
        feature_type = range 1 5,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}