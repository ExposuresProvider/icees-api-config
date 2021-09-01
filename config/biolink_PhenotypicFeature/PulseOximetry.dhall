let meta = ../../common/meta.dhall
let integer = meta.integer
in {
    name = "PulseOximetry",
    feature = {
        feature_type = integer,
        categories = [
            "biolink:PhenotypicFeature"
        ]
    }
}