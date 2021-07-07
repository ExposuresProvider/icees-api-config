let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_a026_water_source_drink",
    identifiers = [
        "ENVO:00003064",
        "ENVO:00003096",
        "ENVO:00005792",
        "ENVO:01001565"
    ],
    feature = {
        feature_type = enum [
            "0",
            "1",
            ">1"
        ],
        categories = [
            "biolink:EnvironmentalExposure"
        ]
    }
}