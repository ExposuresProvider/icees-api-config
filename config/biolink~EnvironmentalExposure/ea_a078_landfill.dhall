let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a078_landfill",
    identifiers = [
        "ENVO:00000533",
        "ENVO:01000916"
    ],
    feature = {
        feature_type = enum [
            "Live more than 2 miles away",
            "Live within 2 miles but more than 1 mile",
            "Live within 1 mile but more than 1/4 mile",
            "Live within 1/4 mile or less",
            "Don't know"
        ],
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}