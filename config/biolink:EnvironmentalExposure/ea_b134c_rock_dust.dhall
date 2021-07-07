let meta = ../../common/meta.dhall
let enum = meta.enum
in {
    name = "ea_b134c_rock_dust",
    identifiers = [
        "ENVO_01001398",
        "ENVO_01001108"
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