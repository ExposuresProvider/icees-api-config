let meta = ../../common/meta.dhall
let integer = meta.integer
let no_identifiers = meta.no_identifiers
in {
    name = "ea_a012_current_home_type",
    identifiers = no_identifiers,
    feature = {
        feature_type = integer,
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}