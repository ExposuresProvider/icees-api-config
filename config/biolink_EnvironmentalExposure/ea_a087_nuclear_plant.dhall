let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a087_nuclear_plant",
    identifiers = [
        "ENVO:00002271"
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